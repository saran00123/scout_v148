.class public Lcom/aliyun/ams/emas/push/notification/CPushMessage;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/aliyun/ams/emas/push/notification/CPushMessage;",
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

    .line 78
    new-instance v0, Lcom/aliyun/ams/emas/push/notification/b;

    invoke-direct {v0}, Lcom/aliyun/ams/emas/push/notification/b;-><init>()V

    sput-object v0, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->appId:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->messageId:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->title:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->content:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->traceInfo:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/aliyun/ams/emas/push/notification/b;)V
    .registers 3

    .line 11
    invoke-direct {p0, p1}, Lcom/aliyun/ams/emas/push/notification/CPushMessage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTraceInfo()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->traceInfo:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->appId:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->content:Ljava/lang/String;

    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->messageId:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->title:Ljava/lang/String;

    return-void
.end method

.method public setTraceInfo(Ljava/lang/String;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->traceInfo:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 71
    iget-object p2, p0, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->appId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object p2, p0, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->messageId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object p2, p0, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object p2, p0, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->content:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object p2, p0, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->traceInfo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
