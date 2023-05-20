.class public abstract Lcom/vivo/vms/IPCCallback$Stub;
.super Landroid/os/Binder;
.source "IPCCallback.java"

# interfaces
.implements Lcom/vivo/vms/IPCCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/vms/IPCCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/vms/IPCCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.vivo.vms.IPCCallback"

.field static final TRANSACTION_call:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.vivo.vms.IPCCallback"

    .line 25
    invoke-virtual {p0, p0, v0}, Lcom/vivo/vms/IPCCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/vivo/vms/IPCCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.vivo.vms.IPCCallback"

    .line 36
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 37
    instance-of v1, v0, Lcom/vivo/vms/IPCCallback;

    if-eqz v1, :cond_13

    .line 38
    check-cast v0, Lcom/vivo/vms/IPCCallback;

    return-object v0

    .line 40
    :cond_13
    new-instance v0, Lcom/vivo/vms/IPCCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/vivo/vms/IPCCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/vivo/vms/IPCCallback;
    .registers 1

    .line 125
    sget-object v0, Lcom/vivo/vms/IPCCallback$Stub$Proxy;->sDefaultImpl:Lcom/vivo/vms/IPCCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/vivo/vms/IPCCallback;)Z
    .registers 2

    .line 118
    sget-object v0, Lcom/vivo/vms/IPCCallback$Stub$Proxy;->sDefaultImpl:Lcom/vivo/vms/IPCCallback;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 119
    sput-object p0, Lcom/vivo/vms/IPCCallback$Stub$Proxy;->sDefaultImpl:Lcom/vivo/vms/IPCCallback;

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
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.vivo.vms.IPCCallback"

    if-eq p1, v0, :cond_13

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_f

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 53
    :cond_f
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 58
    :cond_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 61
    invoke-virtual {p0, p1}, Lcom/vivo/vms/IPCCallback$Stub;->call(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    invoke-virtual {p1, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    return v0
.end method
