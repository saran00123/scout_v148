.class public Lcom/xiaomi/mipush/sdk/MessageHandleService$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mipush/sdk/MessageHandleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Intent;

.field private a:Lcom/xiaomi/mipush/sdk/PushMessageReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Lcom/xiaomi/mipush/sdk/PushMessageReceiver;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/mipush/sdk/MessageHandleService$a;->a:Lcom/xiaomi/mipush/sdk/PushMessageReceiver;

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/MessageHandleService$a;->a:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/MessageHandleService$a;->a:Landroid/content/Intent;

    return-object v0
.end method

.method public a()Lcom/xiaomi/mipush/sdk/PushMessageReceiver;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/MessageHandleService$a;->a:Lcom/xiaomi/mipush/sdk/PushMessageReceiver;

    return-object v0
.end method
