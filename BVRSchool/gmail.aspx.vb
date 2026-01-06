Imports System.Net
Imports System.Threading
Imports Google.Apis.Auth.OAuth2
Imports Google.Apis.PeopleService.v1
Imports Google.Apis.PeopleService.v1.Data
Imports Google.Apis.Services
Imports Google.Apis.Util.Store

Partial Class gmail
    Inherits System.Web.UI.Page

    Protected Sub btnAddContact_Click(sender As Object, e As EventArgs) Handles btnAddContact.Click
        Try
            Dim credential = GetPeopleService()
            CreateOrUpdateContact(credential, txtFirstName.Text, txtLastName.Text, txtEmail.Text, txtMobileNumber.Text)
        Catch ex As Exception
            lblMessage.Text = "Error: " & ex.Message
        End Try
    End Sub

    Private Function GetPeopleService() As PeopleServiceService
        Dim scopes As String() = {PeopleServiceService.Scope.Contacts}

        ' Use Desktop App OAuth flow
        Dim credential = GoogleWebAuthorizationBroker.AuthorizeAsync(
            New ClientSecrets With {
                .ClientId = txtClientID.Text,
                .ClientSecret = txtClientSecret.Text
            },
            scopes,
           txtGmail.Text,
            CancellationToken.None,
            New FileDataStore("GoogleContactsToken"),
            New Google.Apis.Auth.OAuth2.LocalServerCodeReceiver() ' This opens browser automatically
        ).Result

        Return New PeopleServiceService(New BaseClientService.Initializer() With {
            .HttpClientInitializer = credential,
            .ApplicationName = "ASP.NET Google Contacts"
        })
    End Function

    Function NormalizePhone(p As String) As String
        Return New String(p.Where(Function(c) Char.IsDigit(c)).ToArray())
    End Function


    Private Function GetAllGoogleContacts(service As PeopleServiceService) As List(Of Person)
        Dim allConnections As New List(Of Person)()
        Dim nextPageToken As String = Nothing

        Do
            Dim request = service.People.Connections.List("people/me")
            request.PersonFields = "names,emailAddresses,phoneNumbers,metadata"
            request.PageSize = 1000

            If Not String.IsNullOrEmpty(nextPageToken) Then
                request.PageToken = nextPageToken
            End If

            Dim response = request.Execute()

            If response.Connections IsNot Nothing Then
                allConnections.AddRange(response.Connections)
            End If

            nextPageToken = response.NextPageToken

        Loop While Not String.IsNullOrEmpty(nextPageToken)

        Return allConnections
    End Function

    ' ✅ Main logic: create or update contact
    Public Sub CreateOrUpdateContact(service As PeopleServiceService, firstName As String, lastName As String, email As String, phone As String)
        Dim normalizedInputPhone = NormalizePhone(phone)
        Dim allContacts = GetAllGoogleContacts(service)

        Dim existingContact As Person = Nothing

        For Each person In allContacts
            If person.PhoneNumbers IsNot Nothing Then
                For Each pn In person.PhoneNumbers
                    If pn.Value IsNot Nothing AndAlso NormalizePhone(pn.Value) = normalizedInputPhone Then
                        existingContact = person
                        Exit For
                    End If
                Next
            End If
            If existingContact IsNot Nothing Then Exit For
        Next

        If existingContact IsNot Nothing Then
            Console.WriteLine("📌 Contact found. Updating...")

            ' 📝 Update fields
            existingContact.Names = New List(Of Name) From {
            New Name() With {.GivenName = firstName, .FamilyName = lastName}
        }

            existingContact.EmailAddresses = New List(Of EmailAddress) From {
            New EmailAddress() With {.Value = email}
        }

            existingContact.PhoneNumbers = New List(Of PhoneNumber) From {
            New PhoneNumber() With {.Value = phone, .Type = "mobile"}
        }

            ' 🔄 Update the contact
            Dim updateRequest = service.People.UpdateContact(existingContact, existingContact.ResourceName)
            updateRequest.UpdatePersonFields = "names,emailAddresses,phoneNumbers"
            updateRequest.Execute()

            Console.WriteLine("Contact updated: " & existingContact.ResourceName)
        Else
            Console.WriteLine("Contact not found. Creating new...")

            Dim newContact As New Person() With {
            .Names = New List(Of Name) From {New Name() With {.GivenName = firstName, .FamilyName = lastName}},
            .EmailAddresses = New List(Of EmailAddress) From {New EmailAddress() With {.Value = email}},
            .PhoneNumbers = New List(Of PhoneNumber) From {New PhoneNumber() With {.Value = phone, .Type = "mobile"}}
        }

            service.People.CreateContact(newContact).Execute()
            Console.WriteLine("Contact created.")
        End If
    End Sub


    Private Sub form1_Load(sender As Object, e As EventArgs) Handles Me.Load
        'If Not IsPostBack Then
        '    lblMessage.Text = ""
        'End If

        'Dim service = GetPeopleService()
        'AddContact(service, "Sesha", "Reddy", "+91-1111100000", "seshu@seshareddy.com")
        'lblMessage.Text = "Contact added successfully!"

        '622606156193-vcalni67qoltjr2os1f0g1j23oifbp4l.apps.googleusercontent.com
        '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
        'vamsividyavarun@gmail.com

    End Sub
End Class
