.class Lcom/xiaomi/mipush/sdk/MiPushClient$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$packageNames:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/MiPushClient$4;->val$packageNames:[Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/mipush/sdk/MiPushClient$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/MiPushClient$4;->val$packageNames:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_28

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_21

    :cond_f
    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/MiPushClient$4;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_21

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/MiPushClient$4;->val$context:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/xiaomi/mipush/sdk/MiPushClient;->access$200(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_21} :catch_24

    :cond_21
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :catch_24
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    :cond_28
    return-void
.end method
