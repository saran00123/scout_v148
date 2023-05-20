.class public final Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;
.super Ljava/lang/Object;
.source "AuthorizeResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accessToken:Ljava/lang/String;

.field private authorizationCode:Ljava/lang/String;

.field private clientId:Ljava/lang/String;

.field private redirectURI:Ljava/lang/String;

.field private user:Lcom/amazon/identity/auth/device/api/authorization/User;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult$1;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult$1;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;)V
    .registers 3

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;-><init>(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/authorization/User;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/authorization/User;)V
    .registers 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->TOKEN:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;->accessToken:Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->AUTHORIZATION_CODE:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;->authorizationCode:Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->CLIENT_ID:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;->clientId:Ljava/lang/String;

    .line 38
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->REDIRECT_URI:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;->redirectURI:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;->user:Lcom/amazon/identity/auth/device/api/authorization/User;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;->accessToken:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;->authorizationCode:Ljava/lang/String;

    .line 45
    const-class v0, Lcom/amazon/identity/auth/device/api/authorization/User;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/api/authorization/User;

    iput-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;->user:Lcom/amazon/identity/auth/device/api/authorization/User;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;->clientId:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;->redirectURI:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult$1;)V
    .registers 3

    .line 22
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 136
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 137
    :cond_13
    check-cast p1, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;

    .line 138
    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;->accessToken:Ljava/lang/String;

    if-nez v2, :cond_1e

    .line 139
    iget-object v2, p1, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;->accessToken:Ljava/lang/String;

    if-eqz v2, :cond_27

    return v1

    .line 140
    :cond_1e
    iget-object v3, p1, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;->accessToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    return v1

    .line 141
    :cond_27
    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;->authorizationCode:Ljava/lang/String;

    if-nez v2, :cond_30

    .line 142
    iget-object v2, p1, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;->authorizationCode:Ljava/lang/String;

    if-eqz v2, :cond_39

    return v1

    .line 143
    :cond_30
    iget-object v3, p1, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;->authorizationCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    return v1

    .line 144
    :cond_39
    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;->user:Lcom/amazon/identity/auth/device/api/authorization/User;

    if-nez v2, :cond_42

    .line 145
    iget-object v2, p1, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;->user:Lcom/amazon/identity/auth/device/api/authorization/User;

    if-eqz v2, :cond_4b

    return v1

    .line 146
    :cond_42
    iget-object v3, p1, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;->user:Lcom/amazon/identity/auth/device/api/authorization/User;

    invoke-virtual {v2, v3}, Lcom/amazon/identity/auth/device/api/authorization/User;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4b

    return v1

    .line 147
    :cond_4b
    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;->clientId:Ljava/lang/String;

    if-nez v2, :cond_54

    .line 148
    iget-object v2, p1, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;->clientId:Ljava/lang/String;

    if-eqz v2, :cond_5d

    return v1

    .line 149
    :cond_54
    iget-object v3, p1, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;->clientId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5d

    return v1

    .line 150
    :cond_5d
    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;->redirectURI:Ljava/lang/String;

    if-nez v2, :cond_66

    .line 151
    iget-object p1, p1, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;->redirectURI:Ljava/lang/String;

    if-eqz p1, :cond_6f

    return v1

    .line 152
    :cond_66
    iget-object p1, p1, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;->redirectURI:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6f

    return v1

    :cond_6f
    return v0
.end method

.method public getAccessToken()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorizationCode()Ljava/lang/String;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;->authorizationCode:Ljava/lang/String;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectURI()Ljava/lang/String;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;->redirectURI:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/amazon/identity/auth/device/api/authorization/User;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;->user:Lcom/amazon/identity/auth/device/api/authorization/User;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 124
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;->accessToken:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 125
    iget-object v3, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;->authorizationCode:Ljava/lang/String;

    if-nez v3, :cond_15

    move v3, v1

    goto :goto_19

    :cond_15
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_19
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 126
    iget-object v3, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;->user:Lcom/amazon/identity/auth/device/api/authorization/User;

    if-nez v3, :cond_21

    move v3, v1

    goto :goto_25

    :cond_21
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/api/authorization/User;->hashCode()I

    move-result v3

    :goto_25
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 127
    iget-object v3, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;->clientId:Ljava/lang/String;

    if-nez v3, :cond_2d

    move v3, v1

    goto :goto_31

    :cond_2d
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_31
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 128
    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;->redirectURI:Ljava/lang/String;

    if-nez v2, :cond_38

    goto :goto_3c

    :cond_38
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3c
    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 163
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;->accessToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;->authorizationCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;->user:Lcom/amazon/identity/auth/device/api/authorization/User;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 166
    iget-object p2, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;->clientId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget-object p2, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;->redirectURI:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
