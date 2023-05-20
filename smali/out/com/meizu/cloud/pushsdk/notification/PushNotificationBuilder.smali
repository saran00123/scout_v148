.class public Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;
.super Ljava/lang/Object;


# instance fields
.field private appLabel:Ljava/lang/String;

.field private appLargeIcon:Landroid/graphics/Bitmap;

.field private clickPackageName:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private mLargeIcon:I

.field private mNotificationDefaults:I

.field private mNotificationFlags:I

.field private mNotificationSound:Ljava/lang/String;

.field private mStatusBarIcon:I

.field private mVibratePattern:[J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getAppLabel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->appLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLargeIcon()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->appLargeIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getClickPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->clickPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getLargeIcon()I
    .registers 2

    iget v0, p0, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->mLargeIcon:I

    return v0
.end method

.method public getNotificationDefaults()I
    .registers 2

    iget v0, p0, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->mNotificationDefaults:I

    return v0
.end method

.method public getNotificationFlags()I
    .registers 2

    iget v0, p0, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->mNotificationFlags:I

    return v0
.end method

.method public getNotificationSound()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->mNotificationSound:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusBarIcon()I
    .registers 2

    iget v0, p0, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->mStatusBarIcon:I

    return v0
.end method

.method public getVibratePattern()[J
    .registers 2

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->mVibratePattern:[J

    return-object v0
.end method

.method public setAppLabel(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->appLabel:Ljava/lang/String;

    return-void
.end method

.method public setAppLargeIcon(Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->appLargeIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setClickPackageName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->clickPackageName:Ljava/lang/String;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->context:Landroid/content/Context;

    return-void
.end method

.method public setLargeIcon(I)V
    .registers 2

    iput p1, p0, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->mLargeIcon:I

    return-void
.end method

.method public setNotificationDefaults(I)V
    .registers 2

    iput p1, p0, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->mNotificationDefaults:I

    return-void
.end method

.method public setNotificationFlags(I)V
    .registers 2

    iput p1, p0, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->mNotificationFlags:I

    return-void
.end method

.method public setNotificationSound(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->mNotificationSound:Ljava/lang/String;

    return-void
.end method

.method public setStatusBarIcon(I)V
    .registers 2

    iput p1, p0, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->mStatusBarIcon:I

    return-void
.end method

.method public setVibratePattern([J)V
    .registers 2

    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->mVibratePattern:[J

    return-void
.end method
