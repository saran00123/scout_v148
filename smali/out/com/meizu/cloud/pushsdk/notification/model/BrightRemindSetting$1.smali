.class final Lcom/meizu/cloud/pushsdk/notification/model/BrightRemindSetting$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/cloud/pushsdk/notification/model/BrightRemindSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/meizu/cloud/pushsdk/notification/model/BrightRemindSetting;",
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
.method public a(Landroid/os/Parcel;)Lcom/meizu/cloud/pushsdk/notification/model/BrightRemindSetting;
    .registers 3

    new-instance v0, Lcom/meizu/cloud/pushsdk/notification/model/BrightRemindSetting;

    invoke-direct {v0, p1}, Lcom/meizu/cloud/pushsdk/notification/model/BrightRemindSetting;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/meizu/cloud/pushsdk/notification/model/BrightRemindSetting;
    .registers 2

    new-array p1, p1, [Lcom/meizu/cloud/pushsdk/notification/model/BrightRemindSetting;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/notification/model/BrightRemindSetting$1;->a(Landroid/os/Parcel;)Lcom/meizu/cloud/pushsdk/notification/model/BrightRemindSetting;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/notification/model/BrightRemindSetting$1;->a(I)[Lcom/meizu/cloud/pushsdk/notification/model/BrightRemindSetting;

    move-result-object p1

    return-object p1
.end method
