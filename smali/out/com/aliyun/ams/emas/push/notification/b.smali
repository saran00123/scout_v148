.class final Lcom/aliyun/ams/emas/push/notification/b;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/aliyun/ams/emas/push/notification/CPushMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/aliyun/ams/emas/push/notification/CPushMessage;
    .registers 4

    .line 81
    new-instance v0, Lcom/aliyun/ams/emas/push/notification/CPushMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/aliyun/ams/emas/push/notification/CPushMessage;-><init>(Landroid/os/Parcel;Lcom/aliyun/ams/emas/push/notification/b;)V

    return-object v0
.end method

.method public a(I)[Lcom/aliyun/ams/emas/push/notification/CPushMessage;
    .registers 2

    .line 85
    new-array p1, p1, [Lcom/aliyun/ams/emas/push/notification/CPushMessage;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 79
    invoke-virtual {p0, p1}, Lcom/aliyun/ams/emas/push/notification/b;->a(Landroid/os/Parcel;)Lcom/aliyun/ams/emas/push/notification/CPushMessage;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 79
    invoke-virtual {p0, p1}, Lcom/aliyun/ams/emas/push/notification/b;->a(I)[Lcom/aliyun/ams/emas/push/notification/CPushMessage;

    move-result-object p1

    return-object p1
.end method
