.class public abstract Lcom/vivo/vms/IPCInvoke$Stub;
.super Landroid/os/Binder;
.source "IPCInvoke.java"

# interfaces
.implements Lcom/vivo/vms/IPCInvoke;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/vms/IPCInvoke;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/vms/IPCInvoke$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.vivo.vms.IPCInvoke"

.field static final TRANSACTION_asyncCall:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.vivo.vms.IPCInvoke"

    .line 26
    invoke-virtual {p0, p0, v0}, Lcom/vivo/vms/IPCInvoke$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/vivo/vms/IPCInvoke;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.vivo.vms.IPCInvoke"

    .line 37
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 38
    instance-of v1, v0, Lcom/vivo/vms/IPCInvoke;

    if-eqz v1, :cond_13

    .line 39
    check-cast v0, Lcom/vivo/vms/IPCInvoke;

    return-object v0

    .line 41
    :cond_13
    new-instance v0, Lcom/vivo/vms/IPCInvoke$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/vivo/vms/IPCInvoke$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/vivo/vms/IPCInvoke;
    .registers 1

    .line 145
    sget-object v0, Lcom/vivo/vms/IPCInvoke$Stub$Proxy;->sDefaultImpl:Lcom/vivo/vms/IPCInvoke;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/vivo/vms/IPCInvoke;)Z
    .registers 2

    .line 138
    sget-object v0, Lcom/vivo/vms/IPCInvoke$Stub$Proxy;->sDefaultImpl:Lcom/vivo/vms/IPCInvoke;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 139
    sput-object p0, Lcom/vivo/vms/IPCInvoke$Stub$Proxy;->sDefaultImpl:Lcom/vivo/vms/IPCInvoke;

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

    const-string v1, "com.vivo.vms.IPCInvoke"

    if-eq p1, v0, :cond_13

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_f

    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 54
    :cond_f
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 59
    :cond_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_25

    .line 62
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    goto :goto_26

    :cond_25
    const/4 p1, 0x0

    .line 68
    :goto_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/vivo/vms/IPCCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/vivo/vms/IPCCallback;

    move-result-object p2

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/vivo/vms/IPCInvoke$Stub;->asyncCall(Landroid/os/Bundle;Lcom/vivo/vms/IPCCallback;)Landroid/os/Bundle;

    move-result-object p1

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_3e

    .line 72
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    invoke-virtual {p1, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_42

    :cond_3e
    const/4 p1, 0x0

    .line 76
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_42
    return v0
.end method
