.class public abstract Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface$Stub;
.super Landroid/os/Binder;
.source "AmazonAuthorizationServiceInterface.java"

# interfaces
.implements Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.amazon.identity.auth.device.authorization.AmazonAuthorizationServiceInterface"

.field static final TRANSACTION_authorize:I = 0x1

.field static final TRANSACTION_clearAuthorizationState:I = 0x3

.field static final TRANSACTION_getMetaData:I = 0x5

.field static final TRANSACTION_getToken:I = 0x2

.field static final TRANSACTION_openWorkflow:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.amazon.identity.auth.device.authorization.AmazonAuthorizationServiceInterface"

    .line 48
    invoke-virtual {p0, p0, v0}, Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.amazon.identity.auth.device.authorization.AmazonAuthorizationServiceInterface"

    .line 59
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 60
    instance-of v1, v0, Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface;

    if-eqz v1, :cond_13

    .line 61
    check-cast v0, Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface;

    return-object v0

    .line 63
    :cond_13
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface;
    .registers 1

    .line 395
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface$Stub$Proxy;->sDefaultImpl:Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface;)Z
    .registers 2

    .line 388
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface$Stub$Proxy;->sDefaultImpl:Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 389
    sput-object p0, Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface$Stub$Proxy;->sDefaultImpl:Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface;

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "com.amazon.identity.auth.device.authorization.AmazonAuthorizationServiceInterface"

    if-eq p1, v2, :cond_c2

    const/4 v4, 0x2

    if-eq p1, v4, :cond_94

    const/4 v4, 0x3

    if-eq p1, v4, :cond_6a

    const/4 v4, 0x4

    if-eq p1, v4, :cond_38

    const/4 v0, 0x5

    if-eq p1, v0, :cond_21

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_1d

    .line 195
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 76
    :cond_1d
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 181
    :cond_21
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface$Stub;->getMetaData()Landroid/os/Bundle;

    move-result-object p1

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_34

    .line 185
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    invoke-virtual {p1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_37

    .line 189
    :cond_34
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_37
    return v2

    .line 154
    :cond_38
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4a

    .line 157
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 163
    :cond_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 168
    invoke-virtual {p0, v0, p1, p4, p2}, Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface$Stub;->openWorkflow(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_66

    .line 171
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    invoke-virtual {p1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_69

    .line 175
    :cond_66
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_69
    return v2

    .line 131
    :cond_6a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7c

    .line 134
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 140
    :cond_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 141
    invoke-virtual {p0, v0, p1}, Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface$Stub;->clearAuthorizationState(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_90

    .line 144
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    invoke-virtual {p1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_93

    .line 148
    :cond_90
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_93
    return v2

    .line 106
    :cond_94
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_a6

    .line 109
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 115
    :cond_a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    .line 118
    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface$Stub;->getToken(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_be

    .line 121
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    invoke-virtual {p1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_c1

    .line 125
    :cond_be
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_c1
    return v2

    .line 81
    :cond_c2
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_d4

    .line 84
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 90
    :cond_d4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    .line 93
    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface$Stub;->authorize(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_ec

    .line 96
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    invoke-virtual {p1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_ef

    .line 100
    :cond_ec
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_ef
    return v2
.end method
