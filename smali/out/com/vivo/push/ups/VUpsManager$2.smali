.class final Lcom/vivo/push/ups/VUpsManager$2;
.super Ljava/lang/Object;
.source "VUpsManager.java"

# interfaces
.implements Lcom/vivo/push/IPushActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/push/ups/VUpsManager;->unRegisterToken(Landroid/content/Context;Lcom/vivo/push/ups/UPSRegisterCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/push/ups/UPSRegisterCallback;

.field final synthetic b:Lcom/vivo/push/ups/VUpsManager;


# direct methods
.method constructor <init>(Lcom/vivo/push/ups/VUpsManager;Lcom/vivo/push/ups/UPSRegisterCallback;)V
    .registers 3

    .line 39
    iput-object p1, p0, Lcom/vivo/push/ups/VUpsManager$2;->b:Lcom/vivo/push/ups/VUpsManager;

    iput-object p2, p0, Lcom/vivo/push/ups/VUpsManager$2;->a:Lcom/vivo/push/ups/UPSRegisterCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStateChanged(I)V
    .registers 5

    .line 42
    iget-object v0, p0, Lcom/vivo/push/ups/VUpsManager$2;->a:Lcom/vivo/push/ups/UPSRegisterCallback;

    new-instance v1, Lcom/vivo/push/ups/TokenResult;

    const-string v2, ""

    invoke-direct {v1, p1, v2}, Lcom/vivo/push/ups/TokenResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/vivo/push/ups/UPSRegisterCallback;->onResult(Ljava/lang/Object;)V

    return-void
.end method
