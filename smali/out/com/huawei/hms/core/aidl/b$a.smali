.class final Lcom/huawei/hms/core/aidl/b$a;
.super Ljava/lang/Object;
.source "DataBuffer.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/core/aidl/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/huawei/hms/core/aidl/b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/huawei/hms/core/aidl/b;
    .registers 4

    .line 2
    new-instance v0, Lcom/huawei/hms/core/aidl/b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/huawei/hms/core/aidl/b;-><init>(Landroid/os/Parcel;Lcom/huawei/hms/core/aidl/b$a;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/huawei/hms/core/aidl/b$a;->createFromParcel(Landroid/os/Parcel;)Lcom/huawei/hms/core/aidl/b;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/huawei/hms/core/aidl/b;
    .registers 2

    .line 2
    new-array p1, p1, [Lcom/huawei/hms/core/aidl/b;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/huawei/hms/core/aidl/b$a;->newArray(I)[Lcom/huawei/hms/core/aidl/b;

    move-result-object p1

    return-object p1
.end method
