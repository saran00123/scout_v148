.class public Lcom/aliyun/ams/emas/push/h;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static final IMPORTANT_LOG_TAG:Ljava/lang/String; = "[AMS]"

.field public static a:Ljava/lang/String; = "com.alibaba.sdk.android.push.NOTIFY_ACTION"

.field private static b:Ljava/lang/Class;

.field private static c:Lcom/aliyun/ams/emas/push/f;

.field private static d:Lcom/aliyun/ams/emas/push/IReportPushArrive;

.field private static e:I

.field private static f:I

.field private static g:Landroid/content/SharedPreferences;

.field private static h:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/Class;
    .registers 1

    .line 65
    sget-object v0, Lcom/aliyun/ams/emas/push/h;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public static a(IIIILcom/aliyun/ams/emas/push/CommonCallback;)V
    .registers 11

    .line 89
    sget-object v0, Lcom/aliyun/ams/emas/push/h;->c:Lcom/aliyun/ams/emas/push/f;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/aliyun/ams/emas/push/f;->a(IIIILcom/aliyun/ams/emas/push/CommonCallback;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    .line 37
    new-instance v0, Lcom/aliyun/ams/emas/push/f;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aliyun/ams/emas/push/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/aliyun/ams/emas/push/h;->c:Lcom/aliyun/ams/emas/push/f;

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/aliyun/ams/emas/push/h;->g:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4

    .line 109
    sget-object v0, Lcom/aliyun/ams/emas/push/h;->d:Lcom/aliyun/ams/emas/push/IReportPushArrive;

    if-eqz v0, :cond_7

    .line 110
    invoke-interface {v0, p0, p1, p2}, Lcom/aliyun/ams/emas/push/IReportPushArrive;->reportPushArrive(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_7
    return-void
.end method

.method public static a(Lcom/aliyun/ams/emas/push/IReportPushArrive;)V
    .registers 1

    .line 47
    sput-object p0, Lcom/aliyun/ams/emas/push/h;->d:Lcom/aliyun/ams/emas/push/IReportPushArrive;

    return-void
.end method

.method public static a(Lcom/aliyun/ams/emas/push/notification/CPushMessage;)V
    .registers 2

    .line 159
    sget-object v0, Lcom/aliyun/ams/emas/push/h;->c:Lcom/aliyun/ams/emas/push/f;

    invoke-virtual {v0, p0}, Lcom/aliyun/ams/emas/push/f;->a(Lcom/aliyun/ams/emas/push/notification/CPushMessage;)V

    return-void
.end method

.method public static a(Ljava/lang/Class;)V
    .registers 1

    .line 56
    sput-object p0, Lcom/aliyun/ams/emas/push/h;->b:Ljava/lang/Class;

    return-void
.end method

.method public static a(Z)V
    .registers 2

    .line 74
    sget-object v0, Lcom/aliyun/ams/emas/push/h;->c:Lcom/aliyun/ams/emas/push/f;

    invoke-virtual {v0, p0}, Lcom/aliyun/ams/emas/push/f;->a(Z)V

    return-void
.end method

.method public static b(Lcom/aliyun/ams/emas/push/notification/CPushMessage;)V
    .registers 2

    .line 168
    sget-object v0, Lcom/aliyun/ams/emas/push/h;->c:Lcom/aliyun/ams/emas/push/f;

    invoke-virtual {v0, p0}, Lcom/aliyun/ams/emas/push/f;->b(Lcom/aliyun/ams/emas/push/notification/CPushMessage;)V

    return-void
.end method

.method public static b()Z
    .registers 1

    .line 98
    sget-object v0, Lcom/aliyun/ams/emas/push/h;->c:Lcom/aliyun/ams/emas/push/f;

    invoke-virtual {v0}, Lcom/aliyun/ams/emas/push/f;->a()Z

    move-result v0

    return v0
.end method

.method public static c()I
    .registers 3

    .line 120
    sget v0, Lcom/aliyun/ams/emas/push/h;->f:I

    if-nez v0, :cond_26

    .line 121
    sget-object v0, Lcom/aliyun/ams/emas/push/h;->h:Ljava/util/Random;

    if-nez v0, :cond_13

    .line 122
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/aliyun/ams/emas/push/h;->h:Ljava/util/Random;

    .line 125
    :cond_13
    sget-object v0, Lcom/aliyun/ams/emas/push/h;->h:Ljava/util/Random;

    const v1, 0xf4240

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sput v0, Lcom/aliyun/ams/emas/push/h;->f:I

    .line 126
    sget v0, Lcom/aliyun/ams/emas/push/h;->f:I

    if-gez v0, :cond_26

    mul-int/lit8 v0, v0, -0x1

    .line 127
    sput v0, Lcom/aliyun/ams/emas/push/h;->f:I

    .line 130
    :cond_26
    sget v0, Lcom/aliyun/ams/emas/push/h;->f:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/aliyun/ams/emas/push/h;->f:I

    return v0
.end method

.method public static d()I
    .registers 3

    .line 139
    sget v0, Lcom/aliyun/ams/emas/push/h;->e:I

    if-nez v0, :cond_26

    .line 140
    sget-object v0, Lcom/aliyun/ams/emas/push/h;->h:Ljava/util/Random;

    if-nez v0, :cond_13

    .line 141
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/aliyun/ams/emas/push/h;->h:Ljava/util/Random;

    .line 144
    :cond_13
    sget-object v0, Lcom/aliyun/ams/emas/push/h;->h:Ljava/util/Random;

    const v1, 0xf4240

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sput v0, Lcom/aliyun/ams/emas/push/h;->e:I

    .line 145
    sget v0, Lcom/aliyun/ams/emas/push/h;->e:I

    if-gez v0, :cond_26

    mul-int/lit8 v0, v0, -0x1

    .line 146
    sput v0, Lcom/aliyun/ams/emas/push/h;->e:I

    .line 150
    :cond_26
    sget v0, Lcom/aliyun/ams/emas/push/h;->e:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/aliyun/ams/emas/push/h;->e:I

    return v0
.end method
