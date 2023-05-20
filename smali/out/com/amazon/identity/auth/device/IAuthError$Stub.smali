.class public abstract Lcom/amazon/identity/auth/device/IAuthError$Stub;
.super Landroid/os/Binder;
.source "IAuthError.java"

# interfaces
.implements Lcom/amazon/identity/auth/device/IAuthError;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/IAuthError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/IAuthError$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.amazon.identity.auth.device.IAuthError"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.amazon.identity.auth.device.IAuthError"

    .line 22
    invoke-virtual {p0, p0, v0}, Lcom/amazon/identity/auth/device/IAuthError$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/amazon/identity/auth/device/IAuthError;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.amazon.identity.auth.device.IAuthError"

    .line 33
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 34
    instance-of v1, v0, Lcom/amazon/identity/auth/device/IAuthError;

    if-eqz v1, :cond_13

    .line 35
    check-cast v0, Lcom/amazon/identity/auth/device/IAuthError;

    return-object v0

    .line 37
    :cond_13
    new-instance v0, Lcom/amazon/identity/auth/device/IAuthError$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/IAuthError$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/amazon/identity/auth/device/IAuthError;
    .registers 1

    .line 84
    sget-object v0, Lcom/amazon/identity/auth/device/IAuthError$Stub$Proxy;->sDefaultImpl:Lcom/amazon/identity/auth/device/IAuthError;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/amazon/identity/auth/device/IAuthError;)Z
    .registers 2

    .line 77
    sget-object v0, Lcom/amazon/identity/auth/device/IAuthError$Stub$Proxy;->sDefaultImpl:Lcom/amazon/identity/auth/device/IAuthError;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 78
    sput-object p0, Lcom/amazon/identity/auth/device/IAuthError$Stub$Proxy;->sDefaultImpl:Lcom/amazon/identity/auth/device/IAuthError;

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
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_a

    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_a
    const-string p1, "com.amazon.identity.auth.device.IAuthError"

    .line 50
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
