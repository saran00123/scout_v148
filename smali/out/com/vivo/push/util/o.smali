.class public final Lcom/vivo/push/util/o;
.super Ljava/lang/Object;
.source "MessageConvertUtil.java"


# direct methods
.method public static a(Ljava/lang/String;)Lcom/vivo/push/model/InsideNotificationItem;
    .registers 5

    const-string v0, "MessageConvertUtil"

    .line 98
    new-instance v1, Lcom/vivo/push/model/InsideNotificationItem;

    invoke-direct {v1}, Lcom/vivo/push/model/InsideNotificationItem;-><init>()V

    .line 100
    :try_start_7
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string p0, "notify msg pack to obj is null"

    .line 101
    invoke-static {v0, p0}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 104
    :cond_14
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 105
    invoke-virtual {v2, p0}, Lorg/json/JSONArray;->getInt(I)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/vivo/push/model/InsideNotificationItem;->setTargetType(I)V

    const/4 p0, 0x1

    .line 106
    invoke-virtual {v2, p0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/vivo/push/model/InsideNotificationItem;->setTragetContext(Ljava/lang/String;)V

    const/4 p0, 0x2

    .line 108
    invoke-virtual {v2, p0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/vivo/push/model/InsideNotificationItem;->setTitle(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 109
    invoke-virtual {v2, p0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/vivo/push/model/InsideNotificationItem;->setContent(Ljava/lang/String;)V

    const/4 p0, 0x4

    .line 110
    invoke-virtual {v2, p0}, Lorg/json/JSONArray;->getInt(I)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/vivo/push/model/InsideNotificationItem;->setNotifyType(I)V

    const/4 p0, 0x5

    .line 111
    invoke-virtual {v2, p0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/vivo/push/model/InsideNotificationItem;->setPurePicUrl(Ljava/lang/String;)V

    const/4 p0, 0x6

    .line 112
    invoke-virtual {v2, p0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/vivo/push/model/InsideNotificationItem;->setIconUrl(Ljava/lang/String;)V

    const/4 p0, 0x7

    .line 113
    invoke-virtual {v2, p0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/vivo/push/model/InsideNotificationItem;->setCoverUrl(Ljava/lang/String;)V

    const/16 p0, 0x8

    .line 114
    invoke-virtual {v2, p0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/vivo/push/model/InsideNotificationItem;->setSkipContent(Ljava/lang/String;)V

    const/16 p0, 0x9

    .line 115
    invoke-virtual {v2, p0}, Lorg/json/JSONArray;->getInt(I)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/vivo/push/model/InsideNotificationItem;->setSkipType(I)V

    const/16 p0, 0xa

    .line 116
    invoke-virtual {v2, p0}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/vivo/push/model/InsideNotificationItem;->setShowTime(Z)V

    .line 118
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p0

    const/16 v3, 0xb

    if-le p0, v3, :cond_8c

    .line 119
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 120
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-static {v3}, Lcom/vivo/push/util/k;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/vivo/push/model/InsideNotificationItem;->setParams(Ljava/util/Map;)V

    .line 125
    :cond_8c
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p0

    const/16 v3, 0xf

    if-le p0, v3, :cond_b6

    const/16 p0, 0xc

    .line 126
    invoke-virtual {v2, p0}, Lorg/json/JSONArray;->getInt(I)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/vivo/push/model/InsideNotificationItem;->setAppType(I)V

    const/16 p0, 0xd

    .line 127
    invoke-virtual {v2, p0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/vivo/push/model/InsideNotificationItem;->setReactPackage(Ljava/lang/String;)V

    const/16 p0, 0xe

    .line 128
    invoke-virtual {v2, p0}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/vivo/push/model/InsideNotificationItem;->setIsShowBigPicOnMobileNet(Z)V

    .line 129
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/vivo/push/model/InsideNotificationItem;->setSuitReactVersion(Ljava/lang/String;)V

    .line 133
    :cond_b6
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p0

    const/16 v3, 0x10

    if-le p0, v3, :cond_c5

    .line 134
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/vivo/push/model/InsideNotificationItem;->setMessageType(I)V

    .line 137
    :cond_c5
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p0

    const/16 v3, 0x12

    if-le p0, v3, :cond_dd

    const/16 p0, 0x11

    .line 138
    invoke-virtual {v2, p0}, Lorg/json/JSONArray;->getInt(I)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/vivo/push/model/InsideNotificationItem;->setIsMacroReplace(I)V

    .line 139
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/vivo/push/model/InsideNotificationItem;->setAdClickCheckUrl(Ljava/lang/String;)V

    .line 142
    :cond_dd
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p0

    const/16 v3, 0x13

    if-le p0, v3, :cond_ec

    .line 143
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/vivo/push/model/InsideNotificationItem;->setCompatibleType(I)V

    .line 146
    :cond_ec
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p0

    const/16 v3, 0x14

    if-le p0, v3, :cond_102

    .line 147
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/vivo/push/model/InsideNotificationItem;->setInnerPriority(I)V
    :try_end_fb
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_fb} :catch_fc

    goto :goto_102

    :catch_fc
    move-exception p0

    const-string v2, "notify msg pack to obj error"

    .line 150
    invoke-static {v0, v2, p0}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_102
    :goto_102
    return-object v1
.end method

.method public static a(Lcom/vivo/push/model/InsideNotificationItem;)Lcom/vivo/push/model/UPSNotificationMessage;
    .registers 4

    .line 32
    new-instance v0, Lcom/vivo/push/model/UPSNotificationMessage;

    invoke-direct {v0}, Lcom/vivo/push/model/UPSNotificationMessage;-><init>()V

    .line 33
    invoke-virtual {p0}, Lcom/vivo/push/model/InsideNotificationItem;->getTargetType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/push/model/UPSNotificationMessage;->setTargetType(I)V

    .line 34
    invoke-virtual {p0}, Lcom/vivo/push/model/InsideNotificationItem;->getTragetContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/push/model/UPSNotificationMessage;->setTragetContext(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/vivo/push/model/InsideNotificationItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/push/model/UPSNotificationMessage;->setTitle(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcom/vivo/push/model/InsideNotificationItem;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/push/model/UPSNotificationMessage;->setContent(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/vivo/push/model/InsideNotificationItem;->getNotifyType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/push/model/UPSNotificationMessage;->setNotifyType(I)V

    .line 38
    invoke-virtual {p0}, Lcom/vivo/push/model/InsideNotificationItem;->getPurePicUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/push/model/UPSNotificationMessage;->setPurePicUrl(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/vivo/push/model/InsideNotificationItem;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/push/model/UPSNotificationMessage;->setIconUrl(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lcom/vivo/push/model/InsideNotificationItem;->getCoverUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/push/model/UPSNotificationMessage;->setCoverUrl(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/vivo/push/model/InsideNotificationItem;->getSkipContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/push/model/UPSNotificationMessage;->setSkipContent(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/vivo/push/model/InsideNotificationItem;->getSkipType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/push/model/UPSNotificationMessage;->setSkipType(I)V

    .line 43
    invoke-virtual {p0}, Lcom/vivo/push/model/InsideNotificationItem;->isShowTime()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/push/model/UPSNotificationMessage;->setShowTime(Z)V

    .line 44
    invoke-virtual {p0}, Lcom/vivo/push/model/InsideNotificationItem;->getMsgId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/vivo/push/model/UPSNotificationMessage;->setMsgId(J)V

    .line 45
    invoke-virtual {p0}, Lcom/vivo/push/model/InsideNotificationItem;->getParams()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/vivo/push/model/UPSNotificationMessage;->setParams(Ljava/util/Map;)V

    return-object v0
.end method

.method public static b(Lcom/vivo/push/model/InsideNotificationItem;)Ljava/lang/String;
    .registers 4

    .line 53
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 54
    invoke-virtual {p0}, Lcom/vivo/push/model/InsideNotificationItem;->getTargetType()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 55
    invoke-virtual {p0}, Lcom/vivo/push/model/InsideNotificationItem;->getTragetContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 57
    invoke-virtual {p0}, Lcom/vivo/push/model/InsideNotificationItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 58
    invoke-virtual {p0}, Lcom/vivo/push/model/InsideNotificationItem;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 59
    invoke-virtual {p0}, Lcom/vivo/push/model/InsideNotificationItem;->getNotifyType()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 60
    invoke-virtual {p0}, Lcom/vivo/push/model/InsideNotificationItem;->getPurePicUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 61
    invoke-virtual {p0}, Lcom/vivo/push/model/InsideNotificationItem;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 62
    invoke-virtual {p0}, Lcom/vivo/push/model/InsideNotificationItem;->getCoverUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 63
    invoke-virtual {p0}, Lcom/vivo/push/model/InsideNotificationItem;->getSkipContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 64
    invoke-virtual {p0}, Lcom/vivo/push/model/InsideNotificationItem;->getSkipType()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 65
    invoke-virtual {p0}, Lcom/vivo/push/model/InsideNotificationItem;->isShowTime()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    .line 68
    invoke-virtual {p0}, Lcom/vivo/push/model/InsideNotificationItem;->getParams()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_65

    .line 69
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/vivo/push/model/InsideNotificationItem;->getParams()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_6a

    :cond_65
    const-string v1, "{}"

    .line 71
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 75
    :goto_6a
    invoke-virtual {p0}, Lcom/vivo/push/model/InsideNotificationItem;->getAppType()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 76
    invoke-virtual {p0}, Lcom/vivo/push/model/InsideNotificationItem;->getReactPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 77
    invoke-virtual {p0}, Lcom/vivo/push/model/InsideNotificationItem;->isShowBigPicOnMobileNet()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    .line 78
    invoke-virtual {p0}, Lcom/vivo/push/model/InsideNotificationItem;->getSuitReactVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 81
    invoke-virtual {p0}, Lcom/vivo/push/model/InsideNotificationItem;->getMessageType()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 84
    invoke-virtual {p0}, Lcom/vivo/push/model/InsideNotificationItem;->getIsMacroReplace()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 85
    invoke-virtual {p0}, Lcom/vivo/push/model/InsideNotificationItem;->getAdClickCheckUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 88
    invoke-virtual {p0}, Lcom/vivo/push/model/InsideNotificationItem;->getCompatibleType()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 90
    invoke-virtual {p0}, Lcom/vivo/push/model/InsideNotificationItem;->getInnerPriority()I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 91
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
