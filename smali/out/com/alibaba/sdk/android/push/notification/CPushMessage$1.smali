.class final Lcom/alibaba/sdk/android/push/notification/CPushMessage$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/push/notification/CPushMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/alibaba/sdk/android/push/notification/CPushMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/alibaba/sdk/android/push/notification/CPushMessage;
    .registers 4

    new-instance v0, Lcom/alibaba/sdk/android/push/notification/CPushMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/alibaba/sdk/android/push/notification/CPushMessage;-><init>(Landroid/os/Parcel;Lcom/alibaba/sdk/android/push/notification/CPushMessage$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/alibaba/sdk/android/push/notification/CPushMessage;
    .registers 2

    new-array p1, p1, [Lcom/alibaba/sdk/android/push/notification/CPushMessage;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/push/notification/CPushMessage$1;->a(Landroid/os/Parcel;)Lcom/alibaba/sdk/android/push/notification/CPushMessage;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/push/notification/CPushMessage$1;->a(I)[Lcom/alibaba/sdk/android/push/notification/CPushMessage;

    move-result-object p1

    return-object p1
.end method
