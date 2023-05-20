.class final Lcom/vivo/push/ups/VUpsManager$1;
.super Ljava/lang/Object;
.source "VUpsManager.java"

# interfaces
.implements Lcom/vivo/push/IPushActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/push/ups/VUpsManager;->registerToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vivo/push/ups/UPSRegisterCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/push/ups/UPSRegisterCallback;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/vivo/push/ups/VUpsManager;


# direct methods
.method constructor <init>(Lcom/vivo/push/ups/VUpsManager;Lcom/vivo/push/ups/UPSRegisterCallback;Landroid/content/Context;)V
    .registers 4

    .line 29
    iput-object p1, p0, Lcom/vivo/push/ups/VUpsManager$1;->c:Lcom/vivo/push/ups/VUpsManager;

    iput-object p2, p0, Lcom/vivo/push/ups/VUpsManager$1;->a:Lcom/vivo/push/ups/UPSRegisterCallback;

    iput-object p3, p0, Lcom/vivo/push/ups/VUpsManager$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStateChanged(I)V
    .registers 5

    .line 32
    iget-object v0, p0, Lcom/vivo/push/ups/VUpsManager$1;->a:Lcom/vivo/push/ups/UPSRegisterCallback;

    new-instance v1, Lcom/vivo/push/ups/TokenResult;

    iget-object v2, p0, Lcom/vivo/push/ups/VUpsManager$1;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/vivo/push/PushClient;->getInstance(Landroid/content/Context;)Lcom/vivo/push/PushClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/push/PushClient;->getRegId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/vivo/push/ups/TokenResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/vivo/push/ups/UPSRegisterCallback;->onResult(Ljava/lang/Object;)V

    return-void
.end method
