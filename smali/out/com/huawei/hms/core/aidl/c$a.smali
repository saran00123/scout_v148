.class public abstract Lcom/huawei/hms/core/aidl/c$a;
.super Landroid/os/Binder;
.source "IAIDLCallback.java"

# interfaces
.implements Lcom/huawei/hms/core/aidl/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/core/aidl/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/core/aidl/c$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.huawei.hms.core.aidl.IAIDLCallback"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/huawei/hms/core/aidl/c;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.huawei.hms.core.aidl.IAIDLCallback"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2
    instance-of v1, v0, Lcom/huawei/hms/core/aidl/c;

    if-eqz v1, :cond_13

    .line 3
    check-cast v0, Lcom/huawei/hms/core/aidl/c;

    return-object v0

    .line 5
    :cond_13
    new-instance v0, Lcom/huawei/hms/core/aidl/c$a$a;

    invoke-direct {v0, p0}, Lcom/huawei/hms/core/aidl/c$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/huawei/hms/core/aidl/c;
    .registers 1

    .line 1
    sget-object v0, Lcom/huawei/hms/core/aidl/c$a$a;->b:Lcom/huawei/hms/core/aidl/c;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/huawei/hms/core/aidl/c;)Z
    .registers 2

    .line 1
    sget-object v0, Lcom/huawei/hms/core/aidl/c$a$a;->b:Lcom/huawei/hms/core/aidl/c;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 2
    sput-object p0, Lcom/huawei/hms/core/aidl/c$a$a;->b:Lcom/huawei/hms/core/aidl/c;

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

    const-string v1, "com.huawei.hms.core.aidl.IAIDLCallback"

    if-eq p1, v0, :cond_13

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_f

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :cond_f
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 7
    :cond_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_25

    .line 10
    sget-object p1, Lcom/huawei/hms/core/aidl/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/hms/core/aidl/b;

    goto :goto_26

    :cond_25
    const/4 p1, 0x0

    .line 15
    :goto_26
    invoke-interface {p0, p1}, Lcom/huawei/hms/core/aidl/c;->call(Lcom/huawei/hms/core/aidl/b;)V

    return v0
.end method
