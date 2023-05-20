.class public Lcom/alibaba/sdk/android/push/notification/PushData;
.super Ljava/lang/Object;


# static fields
.field public static final KEY_BIG_BODY:Ljava/lang/String; = "big_body"

.field public static final KEY_BIG_PICTURE:Ljava/lang/String; = "big_picture"

.field public static final KEY_BIG_TITLE:Ljava/lang/String; = "big_title"

.field public static final KEY_CHANNEL:Ljava/lang/String; = "notification_channel"

.field public static final KEY_CONTENT:Ljava/lang/String; = "content"

.field public static final KEY_CUSTOM_NOTIFICAITON_ID:Ljava/lang/String; = "custom_notification_id"

.field public static final KEY_EXT:Ljava/lang/String; = "ext"

.field public static final KEY_IMAGE:Ljava/lang/String; = "image"

.field public static final KEY_INBOX_CONTENT:Ljava/lang/String; = "inbox_content"

.field public static final KEY_MSG_ID:Ljava/lang/String; = "msg_id"

.field public static final KEY_MUSIC:Ljava/lang/String; = "music"

.field public static final KEY_NOTIFICATION_PRIORITY:Ljava/lang/String; = "_ALIYUN_NOTIFICATION_PRIORITY_"

.field public static final KEY_NOTIFY_ID:Ljava/lang/String; = "notify_id"

.field public static final KEY_NOTIFY_TYPE:Ljava/lang/String; = "remind"

.field public static final KEY_STYLE:Ljava/lang/String; = "style"

.field public static final KEY_TITLE:Ljava/lang/String; = "title"

.field public static final NOTIFY_TYPE_SILENT:I = 0x0

.field public static final NOTIFY_TYPE_SOUND:I = 0x2

.field public static final NOTIFY_TYPE_VIBRATE:I = 0x1

.field public static final NOTIFY_TYPE_VIBRATE_SOUND:I = 0x3

.field public static final NO_CUSTOM_NOTIFICATION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MPS:PushData"

.field private static logger:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;


# instance fields
.field private bigBody:Ljava/lang/String;

.field private bigPicture:Ljava/lang/String;

.field private bigTitle:Ljava/lang/String;

.field private contentText:Ljava/lang/String;

.field private customNotificationId:I

.field private extraMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private image:Ljava/lang/String;

.field private inboxContent:Ljava/lang/String;

.field private msgId:Ljava/lang/String;

.field private notificationChannel:Ljava/lang/String;

.field private notifyId:I

.field private notifyType:I

.field private priority:I

.field private sound:Ljava/lang/String;

.field private style:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "MPS:PushData"

    invoke-static {v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->getLogger(Ljava/lang/String;)Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/push/notification/PushData;->logger:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/sdk/android/push/notification/PushData;->priority:I

    iput v0, p0, Lcom/alibaba/sdk/android/push/notification/PushData;->customNotificationId:I

    return-void
.end method

.method public static parse(Landroid/content/Context;Ljava/util/Map;)Lcom/alibaba/sdk/android/push/notification/PushData;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/sdk/android/push/notification/PushData;"
        }
    .end annotation

    const-string p0, "_ALIYUN_NOTIFICATION_PRIORITY_"

    const-string/jumbo v0, "title"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "content"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/sdk/android/ams/common/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_11c

    invoke-static {v1}, Lcom/alibaba/sdk/android/ams/common/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    goto/16 :goto_11c

    :cond_22
    new-instance v2, Lcom/alibaba/sdk/android/push/notification/PushData;

    invoke-direct {v2}, Lcom/alibaba/sdk/android/push/notification/PushData;-><init>()V

    const-string v4, "remind"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/alibaba/sdk/android/ams/common/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3a

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    :cond_3a
    const-string v5, "music"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "ext"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "notification_channel"

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/alibaba/sdk/android/push/notification/PushData;->setTitle(Ljava/lang/String;)V

    invoke-direct {v2, v1}, Lcom/alibaba/sdk/android/push/notification/PushData;->setContentText(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v2, v0}, Lcom/alibaba/sdk/android/push/notification/PushData;->setNotifyType(I)V

    invoke-direct {v2, v7}, Lcom/alibaba/sdk/android/push/notification/PushData;->setNotificationChannel(Ljava/lang/String;)V

    const-string v0, "image"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alibaba/sdk/android/push/notification/PushData;->setImage(Ljava/lang/String;)V

    const-string/jumbo v0, "style"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/alibaba/sdk/android/push/notification/PushData;->setStyle(Ljava/lang/String;)V

    const-string v0, "big_title"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/alibaba/sdk/android/push/notification/PushData;->setBigTitle(Ljava/lang/String;)V

    const-string v0, "big_body"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/alibaba/sdk/android/push/notification/PushData;->setBigBody(Ljava/lang/String;)V

    const-string v0, "big_picture"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/alibaba/sdk/android/push/notification/PushData;->setBigPicture(Ljava/lang/String;)V

    const-string v0, "inbox_content"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/alibaba/sdk/android/push/notification/PushData;->setInboxContent(Ljava/lang/String;)V

    const-string v0, "msg_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/alibaba/sdk/android/push/notification/PushData;->setMsgId(Ljava/lang/String;)V

    :try_start_b0
    const-string v0, "notify_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v2, v0}, Lcom/alibaba/sdk/android/push/notification/PushData;->setNotifyId(I)V
    :try_end_bf
    .catch Ljava/lang/Throwable; {:try_start_b0 .. :try_end_bf} :catch_bf

    :catch_bf
    invoke-static {v5}, Lcom/alibaba/sdk/android/ams/common/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c6

    goto :goto_c7

    :cond_c6
    move-object v3, v5

    :goto_c7
    invoke-direct {v2, v3}, Lcom/alibaba/sdk/android/push/notification/PushData;->setSound(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/alibaba/sdk/android/ams/common/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_106

    :try_start_d0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/sdk/android/push/common/util/JSONUtils;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e9

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_e5
    invoke-direct {v2, p0}, Lcom/alibaba/sdk/android/push/notification/PushData;->setPriority(Ljava/lang/String;)V

    goto :goto_fa

    :cond_e9
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    const/4 v3, 0x0

    if-lt p0, v1, :cond_f5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_e5

    :cond_f5
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_e5

    :goto_fa
    invoke-direct {v2, v0}, Lcom/alibaba/sdk/android/push/notification/PushData;->setExtraMap(Ljava/util/Map;)V
    :try_end_fd
    .catch Lorg/json/JSONException; {:try_start_d0 .. :try_end_fd} :catch_fe

    goto :goto_106

    :catch_fe
    move-exception p0

    sget-object v0, Lcom/alibaba/sdk/android/push/notification/PushData;->logger:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v1, "Parse inner json(ext) error:"

    invoke-virtual {v0, v1, p0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_106
    :goto_106
    const-string p0, "custom_notification_id"

    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11b

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-direct {v2, p0}, Lcom/alibaba/sdk/android/push/notification/PushData;->setCustomNotificationId(I)V

    :cond_11b
    return-object v2

    :cond_11c
    :goto_11c
    sget-object p0, Lcom/alibaba/sdk/android/push/notification/PushData;->logger:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "title or content of notify is empty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    return-object v3
.end method

.method private setBigBody(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/notification/PushData;->bigBody:Ljava/lang/String;

    return-void
.end method

.method private setBigPicture(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/notification/PushData;->bigPicture:Ljava/lang/String;

    return-void
.end method

.method private setBigTitle(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/notification/PushData;->bigTitle:Ljava/lang/String;

    return-void
.end method

.method private setContentText(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/notification/PushData;->contentText:Ljava/lang/String;

    return-void
.end method

.method private setCustomNotificationId(I)V
    .registers 2

    iput p1, p0, Lcom/alibaba/sdk/android/push/notification/PushData;->customNotificationId:I

    return-void
.end method

.method private setExtraMap(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/notification/PushData;->extraMap:Ljava/util/Map;

    return-void
.end method

.method private setInboxContent(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/notification/PushData;->inboxContent:Ljava/lang/String;

    return-void
.end method

.method private setMsgId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/notification/PushData;->msgId:Ljava/lang/String;

    return-void
.end method

.method private setNotificationChannel(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/notification/PushData;->notificationChannel:Ljava/lang/String;

    return-void
.end method

.method private setNotifyId(I)V
    .registers 2

    iput p1, p0, Lcom/alibaba/sdk/android/push/notification/PushData;->notifyId:I

    return-void
.end method

.method private setNotifyType(I)V
    .registers 2

    iput p1, p0, Lcom/alibaba/sdk/android/push/notification/PushData;->notifyType:I

    return-void
.end method

.method private setPriority(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/alibaba/sdk/android/push/notification/PushData;->priority:I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_f

    :catch_7
    move-exception p1

    sget-object v0, Lcom/alibaba/sdk/android/push/notification/PushData;->logger:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v1, "formar error:\u6570\u5b57\u683c\u5f0f\u9519\u8bef"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_f
    return-void
.end method

.method private setSound(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/notification/PushData;->sound:Ljava/lang/String;

    return-void
.end method

.method private setStyle(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/notification/PushData;->style:Ljava/lang/String;

    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/notification/PushData;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBigBody()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/notification/PushData;->bigBody:Ljava/lang/String;

    return-object v0
.end method

.method public getBigPicture()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/notification/PushData;->bigPicture:Ljava/lang/String;

    return-object v0
.end method

.method public getBigTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/notification/PushData;->bigTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getContentText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/notification/PushData;->contentText:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomNotificationId()I
    .registers 2

    iget v0, p0, Lcom/alibaba/sdk/android/push/notification/PushData;->customNotificationId:I

    return v0
.end method

.method public getExtraMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/notification/PushData;->extraMap:Ljava/util/Map;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/notification/PushData;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getInboxContent()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/notification/PushData;->inboxContent:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/notification/PushData;->msgId:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationChannel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/notification/PushData;->notificationChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getNotifyId()I
    .registers 2

    iget v0, p0, Lcom/alibaba/sdk/android/push/notification/PushData;->notifyId:I

    return v0
.end method

.method public getNotifyType()I
    .registers 2

    iget v0, p0, Lcom/alibaba/sdk/android/push/notification/PushData;->notifyType:I

    return v0
.end method

.method public getPriority()I
    .registers 2

    iget v0, p0, Lcom/alibaba/sdk/android/push/notification/PushData;->priority:I

    return v0
.end method

.method public getSound()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/notification/PushData;->sound:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/notification/PushData;->style:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/notification/PushData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setImage(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/notification/PushData;->image:Ljava/lang/String;

    return-void
.end method
