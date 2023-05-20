.class public Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;
.super Ljava/lang/Object;


# static fields
.field public static final NOTIFICATION_ICON_RES_TYPE:Ljava/lang/String; = "drawable"

.field public static final NOTIFICATION_LARGE_ICON_FILE:Ljava/lang/String; = "alicloud_notification_largeicon"

.field public static final NOTIFICATION_SMALL_ICON_FILE:Ljava/lang/String; = "alicloud_notification_smallicon"

.field static a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

.field private static c:Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "MPS:CustomNotificationBuilder"

    invoke-static {v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->getLogger(Ljava/lang/String;)Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->c:Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->b:Ljava/util/Map;

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->b:Ljava/util/Map;

    if-nez v0, :cond_11

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->b:Ljava/util/Map;

    :cond_11
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 7

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_12

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_14

    :cond_12
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_14
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private b(Landroid/content/Context;Lcom/alibaba/sdk/android/push/notification/b;)Landroid/app/Notification;
    .registers 19

    move-object/from16 v1, p1

    sget-object v0, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v2, "building basic custom notification"

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/sdk/android/push/notification/b;->s()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/sdk/android/push/notification/b;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/sdk/android/push/notification/b;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/sdk/android/push/notification/b;->w()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/sdk/android/push/notification/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/sdk/android/push/notification/b;->v()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_30

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/sdk/android/push/notification/b;->v()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/alibaba/sdk/android/push/f/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_31

    :cond_30
    const/4 v6, 0x0

    :goto_31
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->e(Landroid/content/Context;Lcom/alibaba/sdk/android/push/notification/b;)Landroid/graphics/Bitmap;

    move-result-object v7

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x10

    const-string v12, ""

    const-string v14, "/raw/"

    const-string v15, "android.resource://"

    const/4 v13, 0x1

    if-lt v8, v9, :cond_174

    new-instance v8, Landroid/app/Notification$Builder;

    invoke-direct {v8, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/sdk/android/push/notification/b;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/sdk/android/push/notification/b;->c()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-direct/range {p0 .. p2}, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->d(Landroid/content/Context;Lcom/alibaba/sdk/android/push/notification/b;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/sdk/android/push/notification/b;->p()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v9, v11, v12}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    if-ne v0, v13, :cond_8e

    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v0, v3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8a

    invoke-virtual {v0, v2}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    :cond_8a
    :goto_8a
    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_d7

    :cond_8e
    const/4 v3, 0x2

    if-ne v0, v3, :cond_a9

    new-instance v0, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    invoke-virtual {v0, v6}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a3

    invoke-virtual {v0, v2}, Landroid/app/Notification$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    :cond_a3
    if-eqz v7, :cond_8a

    invoke-virtual {v0, v7}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    goto :goto_8a

    :cond_a9
    const/4 v3, 0x3

    if-ne v0, v3, :cond_d7

    new-instance v3, Landroid/app/Notification$InboxStyle;

    invoke-direct {v3}, Landroid/app/Notification$InboxStyle;-><init>()V

    :try_start_b1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_b7
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_cb

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    :try_end_c4
    .catch Lorg/json/JSONException; {:try_start_b1 .. :try_end_c4} :catch_c7

    add-int/lit8 v4, v4, 0x1

    goto :goto_b7

    :catch_c7
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_cb
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d4

    invoke-virtual {v3, v2}, Landroid/app/Notification$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    :cond_d4
    invoke-virtual {v8, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    :cond_d7
    :goto_d7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_e0

    invoke-virtual {v8, v13}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    :cond_e0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_f7

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/sdk/android/push/notification/b;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f7

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/sdk/android/push/notification/b;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_f7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v0, v2, :cond_126

    invoke-static {}, Lcom/alibaba/sdk/android/push/notification/e;->b()Z

    move-result v0

    const-string v2, "group"

    if-eqz v0, :cond_11f

    invoke-virtual {v8, v13}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/sdk/android/push/notification/e;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_126

    :cond_11f
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v8, v2}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_126
    :goto_126
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16e

    invoke-virtual {v5, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13a

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_136
    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    goto :goto_16e

    :cond_13a
    invoke-virtual {v5, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_150

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_162

    :cond_150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_162
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_136

    :cond_16e
    :goto_16e
    invoke-virtual {v8}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    goto/16 :goto_25a

    :cond_174
    const/4 v9, 0x0

    new-instance v8, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v8, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/sdk/android/push/notification/b;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/sdk/android/push/notification/b;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v9

    invoke-direct/range {p0 .. p2}, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->d(Landroid/content/Context;Lcom/alibaba/sdk/android/push/notification/b;)I

    move-result v11

    invoke-virtual {v9, v11}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/sdk/android/push/notification/b;->p()I

    move-result v11

    invoke-virtual {v9, v11}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v9

    invoke-virtual {v9, v13}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    if-ne v0, v13, :cond_1c5

    new-instance v0, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1c1

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    :cond_1c1
    :goto_1c1
    invoke-virtual {v8, v0}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_20e

    :cond_1c5
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1e0

    new-instance v0, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    invoke-virtual {v0, v6}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    move-result-object v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1da

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    :cond_1da
    if-eqz v7, :cond_1c1

    invoke-virtual {v0, v7}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    goto :goto_1c1

    :cond_1e0
    const/4 v3, 0x3

    if-ne v0, v3, :cond_20e

    new-instance v3, Landroidx/core/app/NotificationCompat$InboxStyle;

    invoke-direct {v3}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>()V

    :try_start_1e8
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_1ee
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_202

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroidx/core/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;
    :try_end_1fb
    .catch Lorg/json/JSONException; {:try_start_1e8 .. :try_end_1fb} :catch_1fe

    add-int/lit8 v4, v4, 0x1

    goto :goto_1ee

    :catch_1fe
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_202
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20b

    invoke-virtual {v3, v2}, Landroidx/core/app/NotificationCompat$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;

    :cond_20b
    invoke-virtual {v8, v3}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_20e
    :goto_20e
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_256

    invoke-virtual {v5, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_222

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_21e
    invoke-virtual {v8, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_256

    :cond_222
    invoke-virtual {v5, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_238

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24a

    :cond_238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_24a
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_21e

    :cond_256
    :goto_256
    invoke-virtual {v8}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    :goto_25a
    return-object v0
.end method

.method private c(Landroid/content/Context;Lcom/alibaba/sdk/android/push/notification/b;)Landroid/app/Notification;
    .registers 11

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/notification/b;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v2, "building advanced custom notification"

    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/notification/b;->j()I

    move-result v1

    if-eqz v1, :cond_190

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/notification/b;->j()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/notification/b;->l()I

    move-result v2

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/notification/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/notification/b;->m()I

    move-result v2

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/notification/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/notification/b;->n()I

    move-result v2

    if-eqz v2, :cond_43

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/notification/b;->k()I

    move-result v2

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/notification/b;->n()I

    move-result v3

    goto :goto_4a

    :cond_43
    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/notification/b;->k()I

    move-result v2

    const v3, 0x1080077

    :goto_4a
    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    const-string v4, ""

    const/4 v5, 0x1

    const-string v6, "/raw/"

    const-string v7, "android.resource://"

    if-lt v2, v3, :cond_11b

    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/notification/b;->p()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->d(Landroid/content/Context;Lcom/alibaba/sdk/android/push/notification/b;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v1, v3, :cond_87

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    :cond_87
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_9e

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/notification/b;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9e

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/notification/b;->q()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_9e
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt p2, v1, :cond_cd

    invoke-static {}, Lcom/alibaba/sdk/android/push/notification/e;->b()Z

    move-result p2

    const-string v1, "group"

    if-eqz p2, :cond_c6

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/sdk/android/push/notification/e;->a()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_cd

    :cond_c6
    const/4 p2, 0x0

    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_cd
    :goto_cd
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_115

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_e1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_dd
    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    goto :goto_115

    :cond_e1
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_f7

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_109

    :cond_f7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_109
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_dd

    :cond_115
    :goto_115
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    goto/16 :goto_191

    :cond_11b
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v2, p1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/notification/b;->p()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->d(Landroid/content/Context;Lcom/alibaba/sdk/android/push/notification/b;)I

    move-result p2

    invoke-virtual {v1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_18b

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_157

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_153
    invoke-virtual {v2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_18b

    :cond_157
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_16d

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17f

    :cond_16d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_17f
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_153

    :cond_18b
    :goto_18b
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    goto :goto_191

    :cond_190
    const/4 p1, 0x0

    :goto_191
    return-object p1
.end method

.method private d(Landroid/content/Context;Lcom/alibaba/sdk/android/push/notification/b;)I
    .registers 6

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/notification/b;->f()I

    move-result p2

    if-eqz p2, :cond_7

    return p2

    :cond_7
    invoke-static {}, Lcom/alibaba/sdk/android/push/common/a/c;->c()I

    move-result p2

    if-eqz p2, :cond_12

    invoke-static {}, Lcom/alibaba/sdk/android/push/common/a/c;->c()I

    move-result p2

    goto :goto_22

    :cond_12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "alicloud_notification_smallicon"

    const-string v2, "drawable"

    invoke-virtual {p2, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    :goto_22
    const v0, 0x1080077

    :try_start_25
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_36
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_25 .. :try_end_36} :catch_37

    goto :goto_40

    :catch_37
    move-exception p1

    sget-object v1, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v2, "Get system icon error, package name not found, "

    invoke-virtual {v1, v2, p1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move p1, v0

    :goto_40
    if-nez p2, :cond_43

    goto :goto_44

    :cond_43
    move p1, p2

    :goto_44
    return p1
.end method

.method private e(Landroid/content/Context;Lcom/alibaba/sdk/android/push/notification/b;)Landroid/graphics/Bitmap;
    .registers 7

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/notification/b;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/notification/b;->r()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alibaba/sdk/android/push/f/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_14

    :cond_13
    const/4 p2, 0x0

    :goto_14
    if-nez p2, :cond_3f

    invoke-static {}, Lcom/alibaba/sdk/android/push/common/a/c;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/alibaba/sdk/android/push/common/a/c;->b()Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_3f

    :cond_21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "alicloud_notification_largeicon"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    :cond_3f
    :goto_3f
    if-nez p2, :cond_6a

    const p2, 0x1080077

    :try_start_44
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, v0, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_55
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_44 .. :try_end_55} :catch_56

    goto :goto_5e

    :catch_56
    move-exception v0

    sget-object v1, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v2, "Get system icon error, package name not found, "

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5e
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    :cond_6a
    return-object p2
.end method

.method public static getInstance()Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;
    .registers 1

    sget-object v0, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->c:Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;

    if-nez v0, :cond_b

    new-instance v0, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->c:Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;

    :cond_b
    sget-object v0, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->c:Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/alibaba/sdk/android/push/notification/b;)Landroid/app/Notification;
    .registers 5

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/notification/b;->g()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_c

    invoke-direct {p0, p1, p2}, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->b(Landroid/content/Context;Lcom/alibaba/sdk/android/push/notification/b;)Landroid/app/Notification;

    move-result-object p1

    return-object p1

    :cond_c
    const/4 v0, 0x3

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/notification/b;->g()I

    move-result v1

    if-ne v0, v1, :cond_18

    invoke-direct {p0, p1, p2}, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->c(Landroid/content/Context;Lcom/alibaba/sdk/android/push/notification/b;)Landroid/app/Notification;

    move-result-object p1

    return-object p1

    :cond_18
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(I)Lcom/alibaba/sdk/android/push/notification/BasicCustomPushNotification;
    .registers 8

    const-string v0, "get custom notification failed"

    iget-object v1, p0, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->b:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "custom_notification_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    sget-object v0, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v1, "find custom notification from cache"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->b:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/sdk/android/push/notification/BasicCustomPushNotification;

    return-object p1

    :cond_3a
    sget-object v1, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v2, "do not find custom notification from cache, find it from SharedPreferences"

    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/a/a;->g()Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_63

    sget-object p1, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v0, "no corresponding custom notificaiton"

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    return-object v4

    :cond_63
    :try_start_63
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ISO-8859-1"

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/sdk/android/push/notification/BasicCustomPushNotification;
    :try_end_7f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_63 .. :try_end_7f} :catch_151
    .catch Ljava/io/OptionalDataException; {:try_start_63 .. :try_end_7f} :catch_12b
    .catch Ljava/io/StreamCorruptedException; {:try_start_63 .. :try_end_7f} :catch_105
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_7f} :catch_df
    .catch Ljava/lang/ClassNotFoundException; {:try_start_63 .. :try_end_7f} :catch_b9
    .catchall {:try_start_63 .. :try_end_7f} :catchall_177

    :try_start_7f
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_85
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7f .. :try_end_85} :catch_b5
    .catch Ljava/io/OptionalDataException; {:try_start_7f .. :try_end_85} :catch_b1
    .catch Ljava/io/StreamCorruptedException; {:try_start_7f .. :try_end_85} :catch_ae
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_85} :catch_ab
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7f .. :try_end_85} :catch_a8
    .catchall {:try_start_7f .. :try_end_85} :catchall_a5

    sget-object v0, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/push/notification/BasicCustomPushNotification;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    if-eqz v2, :cond_a4

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->b:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a4
    return-object v2

    :catchall_a5
    move-object v4, v2

    goto/16 :goto_177

    :catch_a8
    move-exception v1

    move-object v4, v2

    goto :goto_ba

    :catch_ab
    move-exception v1

    move-object v4, v2

    goto :goto_e0

    :catch_ae
    move-exception v1

    move-object v4, v2

    goto :goto_106

    :catch_b1
    move-exception v1

    move-object v4, v2

    goto/16 :goto_12c

    :catch_b5
    move-exception v1

    move-object v4, v2

    goto/16 :goto_152

    :catch_b9
    move-exception v1

    :goto_ba
    :try_start_ba
    sget-object v2, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_bf
    .catchall {:try_start_ba .. :try_end_bf} :catchall_177

    sget-object v0, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/push/notification/BasicCustomPushNotification;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    if-eqz v4, :cond_de

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->b:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_de
    return-object v4

    :catch_df
    move-exception v1

    :goto_e0
    :try_start_e0
    sget-object v2, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e5
    .catchall {:try_start_e0 .. :try_end_e5} :catchall_177

    sget-object v0, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/push/notification/BasicCustomPushNotification;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    if-eqz v4, :cond_104

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->b:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_104
    return-object v4

    :catch_105
    move-exception v1

    :goto_106
    :try_start_106
    sget-object v2, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10b
    .catchall {:try_start_106 .. :try_end_10b} :catchall_177

    sget-object v0, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/push/notification/BasicCustomPushNotification;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    if-eqz v4, :cond_12a

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->b:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12a
    return-object v4

    :catch_12b
    move-exception v1

    :goto_12c
    :try_start_12c
    sget-object v2, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_131
    .catchall {:try_start_12c .. :try_end_131} :catchall_177

    sget-object v0, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/push/notification/BasicCustomPushNotification;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    if-eqz v4, :cond_150

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->b:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_150
    return-object v4

    :catch_151
    move-exception v1

    :goto_152
    :try_start_152
    sget-object v2, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_157
    .catchall {:try_start_152 .. :try_end_157} :catchall_177

    sget-object v0, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/push/notification/BasicCustomPushNotification;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    if-eqz v4, :cond_176

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->b:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_176
    return-object v4

    :catchall_177
    :goto_177
    sget-object v0, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/push/notification/BasicCustomPushNotification;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    if-eqz v4, :cond_196

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->b:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_196
    return-object v4
.end method

.method public setCustomNotification(ILcom/alibaba/sdk/android/push/notification/BasicCustomPushNotification;)Z
    .registers 11

    const-string v0, "custom_notification_"

    const/4 v1, 0x0

    if-gtz p1, :cond_d

    sget-object p1, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string p2, "custom notification id must be an integer greater than 0"

    :goto_9
    invoke-virtual {p1, p2}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    return v1

    :cond_d
    if-nez p2, :cond_14

    sget-object p1, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string p2, "notification cannot be null"

    goto :goto_9

    :cond_14
    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/a/a;->g()Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v4, 0x1

    :try_start_1e
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v5, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    const-string v6, "ISO-8859-1"

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_51} :catch_53

    move v1, v4

    goto :goto_5b

    :catch_53
    move-exception v2

    sget-object v3, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v4, "get custom notification failed"

    invoke-virtual {v3, v4, v2}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5b
    if-eqz v1, :cond_a3

    iget-object v2, p0, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->b:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    iget-object v2, p0, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->b:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_88
    sget-object v2, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v3, "save the notification to cache"

    invoke-virtual {v2, v3}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/sdk/android/push/notification/CustomNotificationBuilder;->b:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a3
    return v1
.end method
