.class public Lcom/alibaba/sdk/android/push/notification/CPushMessage;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alibaba/sdk/android/push/notification/CPushMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appId:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private messageId:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private traceInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/alibaba/sdk/android/push/notification/CPushMessage$1;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/push/notification/CPushMessage$1;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->appId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->messageId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->title:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->content:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->traceInfo:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/sdk/android/push/notification/CPushMessage$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/push/notification/CPushMessage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static from(Lcom/aliyun/ams/emas/push/notification/CPushMessage;)Lcom/alibaba/sdk/android/push/notification/CPushMessage;
    .registers 3

    new-instance v0, Lcom/alibaba/sdk/android/push/notification/CPushMessage;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/push/notification/CPushMessage;-><init>()V

    invoke-virtual {p0}, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->setAppId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->setMessageId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->setContent(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->getTraceInfo()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->setTraceInfo(Ljava/lang/String;)V

    return-object v0
.end method

.method public static to(Lcom/alibaba/sdk/android/push/notification/CPushMessage;)Lcom/aliyun/ams/emas/push/notification/CPushMessage;
    .registers 3

    new-instance v0, Lcom/aliyun/ams/emas/push/notification/CPushMessage;

    invoke-direct {v0}, Lcom/aliyun/ams/emas/push/notification/CPushMessage;-><init>()V

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->setAppId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->setMessageId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->setContent(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->getTraceInfo()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->setTraceInfo(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTraceInfo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->traceInfo:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->appId:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->content:Ljava/lang/String;

    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->messageId:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->title:Ljava/lang/String;

    return-void
.end method

.method public setTraceInfo(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->traceInfo:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget-object p2, p0, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->appId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->messageId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->content:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->traceInfo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
