.class public Lcom/heytap/msp/push/mode/MessageStat;
.super Ljava/lang/Object;


# static fields
.field private static final APP_PACKAGE:Ljava/lang/String; = "appPackage"

.field private static final EVENT_ID:Ljava/lang/String; = "eventID"

.field private static final EVENT_TIME:Ljava/lang/String; = "eventTime"

.field private static final GLOBAL_ID:Ljava/lang/String; = "globalID"

.field private static final MESSAGE_TYPE:Ljava/lang/String; = "messageType"

.field private static final PROPERTY:Ljava/lang/String; = "property"

.field private static final TASK_ID:Ljava/lang/String; = "taskID"


# instance fields
.field private mAppPackage:Ljava/lang/String;

.field private mEventId:Ljava/lang/String;

.field private mEventTime:J

.field private mGlobalId:Ljava/lang/String;

.field private mProperty:Ljava/lang/String;

.field private mTaskID:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    iput v0, p0, Lcom/heytap/msp/push/mode/MessageStat;->mType:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heytap/msp/push/mode/MessageStat;->mEventTime:J

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/heytap/msp/push/mode/MessageStat;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    iput v0, p0, Lcom/heytap/msp/push/mode/MessageStat;->mType:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heytap/msp/push/mode/MessageStat;->mEventTime:J

    invoke-virtual {p0, p1}, Lcom/heytap/msp/push/mode/MessageStat;->setType(I)V

    invoke-virtual {p0, p2}, Lcom/heytap/msp/push/mode/MessageStat;->setAppPackage(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/heytap/msp/push/mode/MessageStat;->setGlobalId(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/heytap/msp/push/mode/MessageStat;->setTaskID(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Lcom/heytap/msp/push/mode/MessageStat;->setEventId(Ljava/lang/String;)V

    invoke-virtual {p0, p6}, Lcom/heytap/msp/push/mode/MessageStat;->setProperty(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/16 v1, 0x1000

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v6, ""

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/heytap/msp/push/mode/MessageStat;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    const/16 v1, 0x1000

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/heytap/msp/push/mode/MessageStat;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/heytap/msp/push/mode/MessageStat;
    .registers 6

    const-string v0, ""

    new-instance v1, Lcom/heytap/msp/push/mode/MessageStat;

    invoke-direct {v1}, Lcom/heytap/msp/push/mode/MessageStat;-><init>()V

    :try_start_7
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "messageType"

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/heytap/msp/push/mode/MessageStat;->setType(I)V

    const-string p0, "appPackage"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/heytap/msp/push/mode/MessageStat;->setAppPackage(Ljava/lang/String;)V

    const-string p0, "eventID"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/heytap/msp/push/mode/MessageStat;->setEventId(Ljava/lang/String;)V

    const-string p0, "globalID"

    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/heytap/msp/push/mode/MessageStat;->setGlobalId(Ljava/lang/String;)V

    const-string p0, "taskID"

    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/heytap/msp/push/mode/MessageStat;->setTaskID(Ljava/lang/String;)V

    const-string p0, "property"

    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/heytap/msp/push/mode/MessageStat;->setProperty(Ljava/lang/String;)V

    const-string p0, "eventTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, p0, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/heytap/msp/push/mode/MessageStat;->setEventTime(J)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_50} :catch_51

    return-object v1

    :catch_51
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/heytap/mcssdk/f/c;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getAppPackage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/heytap/msp/push/mode/MessageStat;->mAppPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getEventId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/heytap/msp/push/mode/MessageStat;->mEventId:Ljava/lang/String;

    return-object v0
.end method

.method public getEventTime()J
    .registers 3

    iget-wide v0, p0, Lcom/heytap/msp/push/mode/MessageStat;->mEventTime:J

    return-wide v0
.end method

.method public getGlobalId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/heytap/msp/push/mode/MessageStat;->mGlobalId:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/heytap/msp/push/mode/MessageStat;->mProperty:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskID()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/heytap/msp/push/mode/MessageStat;->mTaskID:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Lcom/heytap/msp/push/mode/MessageStat;->mType:I

    return v0
.end method

.method public setAppPackage(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/heytap/msp/push/mode/MessageStat;->mAppPackage:Ljava/lang/String;

    return-void
.end method

.method public setEventId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/heytap/msp/push/mode/MessageStat;->mEventId:Ljava/lang/String;

    return-void
.end method

.method public setEventTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/heytap/msp/push/mode/MessageStat;->mEventTime:J

    return-void
.end method

.method public setGlobalId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/heytap/msp/push/mode/MessageStat;->mGlobalId:Ljava/lang/String;

    return-void
.end method

.method public setProperty(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/heytap/msp/push/mode/MessageStat;->mProperty:Ljava/lang/String;

    return-void
.end method

.method public setTaskID(I)V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/msp/push/mode/MessageStat;->mTaskID:Ljava/lang/String;

    return-void
.end method

.method public setTaskID(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/heytap/msp/push/mode/MessageStat;->mTaskID:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .registers 2

    iput p1, p0, Lcom/heytap/msp/push/mode/MessageStat;->mType:I

    return-void
.end method

.method public toJsonObject()Ljava/lang/String;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "messageType"

    iget v2, p0, Lcom/heytap/msp/push/mode/MessageStat;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "eventID"

    iget-object v2, p0, Lcom/heytap/msp/push/mode/MessageStat;->mEventId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "appPackage"

    iget-object v2, p0, Lcom/heytap/msp/push/mode/MessageStat;->mAppPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "eventTime"

    iget-wide v2, p0, Lcom/heytap/msp/push/mode/MessageStat;->mEventTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/heytap/msp/push/mode/MessageStat;->mGlobalId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_38

    const-string v1, "globalID"

    iget-object v2, p0, Lcom/heytap/msp/push/mode/MessageStat;->mGlobalId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_38
    iget-object v1, p0, Lcom/heytap/msp/push/mode/MessageStat;->mTaskID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_47

    const-string v1, "taskID"

    iget-object v2, p0, Lcom/heytap/msp/push/mode/MessageStat;->mTaskID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_47
    iget-object v1, p0, Lcom/heytap/msp/push/mode/MessageStat;->mProperty:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5f

    const-string v1, "property"

    iget-object v2, p0, Lcom/heytap/msp/push/mode/MessageStat;->mProperty:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_56} :catch_57

    goto :goto_5f

    :catch_57
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/heytap/mcssdk/f/c;->e(Ljava/lang/String;)V

    :cond_5f
    :goto_5f
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
