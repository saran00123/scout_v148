.class public Lcom/huawei/hms/push/RemoteMessage;
.super Ljava/lang/Object;
.source "RemoteMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/push/RemoteMessage$MessagePriority;,
        Lcom/huawei/hms/push/RemoteMessage$Builder;,
        Lcom/huawei/hms/push/RemoteMessage$Notification;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/huawei/hms/push/RemoteMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIORITY_HIGH:I = 0x1

.field public static final PRIORITY_NORMAL:I = 0x2

.field public static final PRIORITY_UNKNOWN:I

.field public static final a:[Ljava/lang/String;

.field public static final b:[I

.field public static final c:[J

.field public static final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public i:Landroid/os/Bundle;

.field public j:Lcom/huawei/hms/push/RemoteMessage$Notification;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/String;

    sput-object v2, Lcom/huawei/hms/push/RemoteMessage;->a:[Ljava/lang/String;

    .line 2
    new-array v2, v0, [I

    sput-object v2, Lcom/huawei/hms/push/RemoteMessage;->b:[I

    .line 3
    new-array v0, v0, [J

    sput-object v0, Lcom/huawei/hms/push/RemoteMessage;->c:[J

    .line 4
    new-instance v0, Ljava/util/HashMap;

    const/16 v2, 0x8

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/huawei/hms/push/RemoteMessage;->d:Ljava/util/HashMap;

    .line 5
    sget-object v0, Lcom/huawei/hms/push/RemoteMessage;->d:Ljava/util/HashMap;

    const-string v3, ""

    const-string v4, "from"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/huawei/hms/push/RemoteMessage;->d:Ljava/util/HashMap;

    const-string v4, "collapseKey"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/huawei/hms/push/RemoteMessage;->d:Ljava/util/HashMap;

    const-string v4, "sendTime"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/huawei/hms/push/RemoteMessage;->d:Ljava/util/HashMap;

    const v4, 0x15180

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "ttl"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lcom/huawei/hms/push/RemoteMessage;->d:Ljava/util/HashMap;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "urgency"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lcom/huawei/hms/push/RemoteMessage;->d:Ljava/util/HashMap;

    const-string v5, "oriUrgency"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lcom/huawei/hms/push/RemoteMessage;->d:Ljava/util/HashMap;

    const-string v4, "sendMode"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lcom/huawei/hms/push/RemoteMessage;->d:Ljava/util/HashMap;

    const-string v4, "receiptMode"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/huawei/hms/push/RemoteMessage;->e:Ljava/util/HashMap;

    .line 14
    sget-object v0, Lcom/huawei/hms/push/RemoteMessage;->e:Ljava/util/HashMap;

    const-string v1, "title_loc_key"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/huawei/hms/push/RemoteMessage;->e:Ljava/util/HashMap;

    const-string v1, "body_loc_key"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lcom/huawei/hms/push/RemoteMessage;->e:Ljava/util/HashMap;

    const-string v1, "notifyIcon"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/huawei/hms/push/RemoteMessage;->e:Ljava/util/HashMap;

    sget-object v1, Lcom/huawei/hms/push/RemoteMessage;->a:[Ljava/lang/String;

    const-string v4, "title_loc_args"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/huawei/hms/push/RemoteMessage;->e:Ljava/util/HashMap;

    sget-object v1, Lcom/huawei/hms/push/RemoteMessage;->a:[Ljava/lang/String;

    const-string v4, "body_loc_args"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/huawei/hms/push/RemoteMessage;->e:Ljava/util/HashMap;

    const-string v1, "ticker"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/huawei/hms/push/RemoteMessage;->e:Ljava/util/HashMap;

    const-string v1, "notifyTitle"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/huawei/hms/push/RemoteMessage;->e:Ljava/util/HashMap;

    const-string v1, "content"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/huawei/hms/push/RemoteMessage;->f:Ljava/util/HashMap;

    .line 23
    sget-object v0, Lcom/huawei/hms/push/RemoteMessage;->f:Ljava/util/HashMap;

    const-string v1, "icon"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/huawei/hms/push/RemoteMessage;->f:Ljava/util/HashMap;

    const-string v1, "color"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/huawei/hms/push/RemoteMessage;->f:Ljava/util/HashMap;

    const-string v1, "sound"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/huawei/hms/push/RemoteMessage;->f:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "defaultLightSettings"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/huawei/hms/push/RemoteMessage;->f:Ljava/util/HashMap;

    sget-object v4, Lcom/huawei/hms/push/RemoteMessage;->b:[I

    const-string v5, "lightSettings"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/huawei/hms/push/RemoteMessage;->f:Ljava/util/HashMap;

    const-string v4, "defaultSound"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/huawei/hms/push/RemoteMessage;->f:Ljava/util/HashMap;

    const-string v4, "defaultVibrateTimings"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/huawei/hms/push/RemoteMessage;->f:Ljava/util/HashMap;

    sget-object v4, Lcom/huawei/hms/push/RemoteMessage;->c:[J

    const-string v5, "vibrateTimings"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/huawei/hms/push/RemoteMessage;->g:Ljava/util/HashMap;

    .line 32
    sget-object v0, Lcom/huawei/hms/push/RemoteMessage;->g:Ljava/util/HashMap;

    const-string v2, "tag"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/huawei/hms/push/RemoteMessage;->g:Ljava/util/HashMap;

    const-string v2, "when"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/huawei/hms/push/RemoteMessage;->g:Ljava/util/HashMap;

    const-string v2, "localOnly"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/huawei/hms/push/RemoteMessage;->g:Ljava/util/HashMap;

    const-string v2, "badgeSetNum"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/huawei/hms/push/RemoteMessage;->g:Ljava/util/HashMap;

    const-string v2, "priority"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/huawei/hms/push/RemoteMessage;->g:Ljava/util/HashMap;

    const-string v2, "autoCancel"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/huawei/hms/push/RemoteMessage;->g:Ljava/util/HashMap;

    const-string v1, "visibility"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/huawei/hms/push/RemoteMessage;->g:Ljava/util/HashMap;

    const-string v1, "channelId"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/huawei/hms/push/RemoteMessage;->h:Ljava/util/HashMap;

    .line 41
    sget-object v0, Lcom/huawei/hms/push/RemoteMessage;->h:Ljava/util/HashMap;

    const-string v1, "acn"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/huawei/hms/push/RemoteMessage;->h:Ljava/util/HashMap;

    const-string v1, "intentUri"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/huawei/hms/push/RemoteMessage;->h:Ljava/util/HashMap;

    const-string v1, "url"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v0, Lcom/huawei/hms/push/b;

    invoke-direct {v0}, Lcom/huawei/hms/push/b;-><init>()V

    sput-object v0, Lcom/huawei/hms/push/RemoteMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/huawei/hms/push/RemoteMessage;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/push/RemoteMessage;->i:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/push/RemoteMessage;->i:Landroid/os/Bundle;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/huawei/hms/push/RemoteMessage$Notification;

    iput-object p1, p0, Lcom/huawei/hms/push/RemoteMessage;->j:Lcom/huawei/hms/push/RemoteMessage$Notification;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 2

    if-eqz p0, :cond_9

    const-string v0, "msgContent"

    .line 33
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Landroid/os/Bundle;)Lorg/json/JSONObject;
    .registers 2

    const-string v0, "message_body"

    .line 1
    :try_start_2
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/hms/push/v;->a([B)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_f} :catch_10

    return-object v0

    :catch_10
    const-string p0, "RemoteMessage"

    const-string v0, "JSONException:parse message body failed."

    .line 3
    invoke-static {p0, v0}, Lcom/huawei/hms/support/log/HMSLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 2

    if-eqz p0, :cond_9

    const-string v0, "notifyDetail"

    .line 4
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 2

    if-eqz p0, :cond_9

    const-string v0, "param"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 2

    if-eqz p0, :cond_9

    const-string v0, "psContent"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 15

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/huawei/hms/push/RemoteMessage;->b(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v2

    .line 3
    invoke-static {v2}, Lcom/huawei/hms/push/RemoteMessage;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v1, 0x0

    const-string v4, "data"

    .line 4
    invoke-static {v3, v4, v1}, Lcom/huawei/hms/push/utils/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "analyticInfo"

    .line 5
    invoke-static {v3, v6, v1}, Lcom/huawei/hms/push/utils/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 6
    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "device_token"

    .line 7
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {v3}, Lcom/huawei/hms/push/RemoteMessage;->d(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v6

    .line 10
    invoke-static {v6}, Lcom/huawei/hms/push/RemoteMessage;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    .line 11
    invoke-static {v6}, Lcom/huawei/hms/push/RemoteMessage;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "inputType"

    .line 12
    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4f

    .line 13
    invoke-static {v3, v6, v5}, Lcom/huawei/hms/push/s;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4f

    const-string v1, "message_body"

    .line 14
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hms/push/v;->a([B)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_4f
    const-string v9, "to"

    .line 16
    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "message_type"

    .line 17
    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v12, "msgId"

    .line 18
    invoke-static {v3, v12, v1}, Lcom/huawei/hms/push/utils/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0, v12, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, v11, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    sget-object p1, Lcom/huawei/hms/push/RemoteMessage;->d:Ljava/util/HashMap;

    invoke-static {v2, v0, p1}, Lcom/huawei/hms/push/utils/JsonUtil;->transferJsonObjectToBundle(Lorg/json/JSONObject;Landroid/os/Bundle;Ljava/util/HashMap;)V

    move-object v1, p0

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    .line 24
    invoke-virtual/range {v1 .. v6}, Lcom/huawei/hms/push/RemoteMessage;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "notification"

    .line 25
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)Landroid/os/Bundle;
    .registers 8

    .line 26
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 27
    sget-object v1, Lcom/huawei/hms/push/RemoteMessage;->e:Ljava/util/HashMap;

    invoke-static {p3, v0, v1}, Lcom/huawei/hms/push/utils/JsonUtil;->transferJsonObjectToBundle(Lorg/json/JSONObject;Landroid/os/Bundle;Ljava/util/HashMap;)V

    .line 28
    sget-object p3, Lcom/huawei/hms/push/RemoteMessage;->f:Ljava/util/HashMap;

    invoke-static {p4, v0, p3}, Lcom/huawei/hms/push/utils/JsonUtil;->transferJsonObjectToBundle(Lorg/json/JSONObject;Landroid/os/Bundle;Ljava/util/HashMap;)V

    .line 29
    sget-object p3, Lcom/huawei/hms/push/RemoteMessage;->g:Ljava/util/HashMap;

    invoke-static {p1, v0, p3}, Lcom/huawei/hms/push/utils/JsonUtil;->transferJsonObjectToBundle(Lorg/json/JSONObject;Landroid/os/Bundle;Ljava/util/HashMap;)V

    .line 30
    sget-object p1, Lcom/huawei/hms/push/RemoteMessage;->h:Ljava/util/HashMap;

    invoke-static {p5, v0, p1}, Lcom/huawei/hms/push/utils/JsonUtil;->transferJsonObjectToBundle(Lorg/json/JSONObject;Landroid/os/Bundle;Ljava/util/HashMap;)V

    const-string p1, "notifyId"

    const/4 p3, 0x0

    .line 31
    invoke-static {p2, p1, p3}, Lcom/huawei/hms/push/utils/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result p2

    .line 32
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAnalyticInfo()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/push/RemoteMessage;->i:Landroid/os/Bundle;

    const-string v1, "analyticInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAnalyticInfoMap()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/huawei/hms/push/RemoteMessage;->i:Landroid/os/Bundle;

    const-string v2, "analyticInfo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_43

    .line 4
    :try_start_19
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 6
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_3b} :catch_3c

    goto :goto_22

    :catch_3c
    const-string v1, "RemoteMessage"

    const-string v2, "JSONException: get analyticInfo from map failed."

    .line 10
    invoke-static {v1, v2}, Lcom/huawei/hms/support/log/HMSLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_43
    return-object v0
.end method

.method public getCollapseKey()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/push/RemoteMessage;->i:Landroid/os/Bundle;

    const-string v1, "collapseKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/push/RemoteMessage;->i:Landroid/os/Bundle;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataOfMap()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/huawei/hms/push/RemoteMessage;->i:Landroid/os/Bundle;

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_43

    .line 4
    :try_start_19
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 6
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_3b} :catch_3c

    goto :goto_22

    :catch_3c
    const-string v1, "RemoteMessage"

    const-string v2, "JSONException: get data from map failed"

    .line 10
    invoke-static {v1, v2}, Lcom/huawei/hms/support/log/HMSLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_43
    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/push/RemoteMessage;->i:Landroid/os/Bundle;

    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/push/RemoteMessage;->i:Landroid/os/Bundle;

    const-string v1, "msgId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageType()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/push/RemoteMessage;->i:Landroid/os/Bundle;

    const-string v1, "message_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotification()Lcom/huawei/hms/push/RemoteMessage$Notification;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/push/RemoteMessage;->i:Landroid/os/Bundle;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/huawei/hms/push/RemoteMessage;->j:Lcom/huawei/hms/push/RemoteMessage$Notification;

    const/4 v2, 0x0

    if-nez v1, :cond_16

    if-eqz v0, :cond_16

    .line 3
    new-instance v1, Lcom/huawei/hms/push/RemoteMessage$Notification;

    invoke-direct {v1, v0, v2}, Lcom/huawei/hms/push/RemoteMessage$Notification;-><init>(Landroid/os/Bundle;Lcom/huawei/hms/push/b;)V

    iput-object v1, p0, Lcom/huawei/hms/push/RemoteMessage;->j:Lcom/huawei/hms/push/RemoteMessage$Notification;

    .line 4
    :cond_16
    iget-object v0, p0, Lcom/huawei/hms/push/RemoteMessage;->j:Lcom/huawei/hms/push/RemoteMessage$Notification;

    if-nez v0, :cond_26

    .line 5
    new-instance v0, Lcom/huawei/hms/push/RemoteMessage$Notification;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/huawei/hms/push/RemoteMessage$Notification;-><init>(Landroid/os/Bundle;Lcom/huawei/hms/push/b;)V

    iput-object v0, p0, Lcom/huawei/hms/push/RemoteMessage;->j:Lcom/huawei/hms/push/RemoteMessage$Notification;

    .line 6
    :cond_26
    iget-object v0, p0, Lcom/huawei/hms/push/RemoteMessage;->j:Lcom/huawei/hms/push/RemoteMessage$Notification;

    return-object v0
.end method

.method public getOriginalUrgency()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/push/RemoteMessage;->i:Landroid/os/Bundle;

    const-string v1, "oriUrgency"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    const/4 v0, 0x0

    :cond_f
    return v0
.end method

.method public getReceiptMode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/push/RemoteMessage;->i:Landroid/os/Bundle;

    const-string v1, "receiptMode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSendMode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/push/RemoteMessage;->i:Landroid/os/Bundle;

    const-string v1, "sendMode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSentTime()J
    .registers 5

    const-wide/16 v0, 0x0

    .line 1
    :try_start_2
    iget-object v2, p0, Lcom/huawei/hms/push/RemoteMessage;->i:Landroid/os/Bundle;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_4} :catch_15

    const-string v3, "sendTime"

    :try_start_6
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 3
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_14} :catch_15

    :cond_14
    return-wide v0

    :catch_15
    const-string v2, "RemoteMessage"

    const-string v3, "NumberFormatException: get sendTime error."

    .line 4
    invoke-static {v2, v3}, Lcom/huawei/hms/support/log/HMSLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method public getTo()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/push/RemoteMessage;->i:Landroid/os/Bundle;

    const-string v1, "to"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/push/RemoteMessage;->i:Landroid/os/Bundle;

    const-string v1, "device_token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTtl()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/push/RemoteMessage;->i:Landroid/os/Bundle;

    const-string v1, "ttl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getUrgency()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/push/RemoteMessage;->i:Landroid/os/Bundle;

    const-string v1, "urgency"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    const/4 v0, 0x0

    :cond_f
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    iget-object p2, p0, Lcom/huawei/hms/push/RemoteMessage;->i:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 2
    iget-object p2, p0, Lcom/huawei/hms/push/RemoteMessage;->j:Lcom/huawei/hms/push/RemoteMessage$Notification;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
