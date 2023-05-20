.class public abstract Lcom/amazon/identity/auth/device/authorization/IAuthorizationListener$Stub;
.super Landroid/os/Binder;
.source "IAuthorizationListener.java"

# interfaces
.implements Lcom/amazon/identity/auth/device/authorization/IAuthorizationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/authorization/IAuthorizationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/authorization/IAuthorizationListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.amazon.identity.auth.device.authorization.IAuthorizationListener"

.field static final TRANSACTION_onCancel:I = 0x3

.field static final TRANSACTION_onError:I = 0x2

.field static final TRANSACTION_onSuccess:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.amazon.identity.auth.device.authorization.IAuthorizationListener"

    .line 31
    invoke-virtual {p0, p0, v0}, Lcom/amazon/identity/auth/device/authorization/IAuthorizationListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/amazon/identity/auth/device/authorization/IAuthorizationListener;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.amazon.identity.auth.device.authorization.IAuthorizationListener"

    .line 42
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 43
    instance-of v1, v0, Lcom/amazon/identity/auth/device/authorization/IAuthorizationListener;

    if-eqz v1, :cond_13

    .line 44
    check-cast v0, Lcom/amazon/identity/auth/device/authorization/IAuthorizationListener;

    return-object v0

    .line 46
    :cond_13
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/IAuthorizationListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/authorization/IAuthorizationListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/amazon/identity/auth/device/authorization/IAuthorizationListener;
    .registers 1

    .line 202
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/IAuthorizationListener$Stub$Proxy;->sDefaultImpl:Lcom/amazon/identity/auth/device/authorization/IAuthorizationListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/amazon/identity/auth/device/authorization/IAuthorizationListener;)Z
    .registers 2

    .line 195
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/IAuthorizationListener$Stub$Proxy;->sDefaultImpl:Lcom/amazon/identity/auth/device/authorization/IAuthorizationListener;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 196
    sput-object p0, Lcom/amazon/identity/auth/device/authorization/IAuthorizationListener$Stub$Proxy;->sDefaultImpl:Lcom/amazon/identity/auth/device/authorization/IAuthorizationListener;

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
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "com.amazon.identity.auth.device.authorization.IAuthorizationListener"

    if-eq p1, v1, :cond_45

    const/4 v3, 0x2

    if-eq p1, v3, :cond_33

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1a

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_16

    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 59
    :cond_16
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 87
    :cond_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2c

    .line 90
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 95
    :cond_2c
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/authorization/IAuthorizationListener$Stub;->onCancel(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 78
    :cond_33
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/identity/auth/device/IAuthError$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/identity/auth/device/IAuthError;

    move-result-object p1

    .line 81
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/authorization/IAuthorizationListener$Stub;->onError(Lcom/amazon/identity/auth/device/IAuthError;)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 64
    :cond_45
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_57

    .line 67
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 72
    :cond_57
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/authorization/IAuthorizationListener$Stub;->onSuccess(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method
