.class final Lcom/vivo/push/ups/VUpsManager$3;
.super Ljava/lang/Object;
.source "VUpsManager.java"

# interfaces
.implements Lcom/vivo/push/IPushActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/push/ups/VUpsManager;->turnOffPush(Landroid/content/Context;Lcom/vivo/push/ups/UPSTurnCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/push/ups/UPSTurnCallback;

.field final synthetic b:Lcom/vivo/push/ups/VUpsManager;


# direct methods
.method constructor <init>(Lcom/vivo/push/ups/VUpsManager;Lcom/vivo/push/ups/UPSTurnCallback;)V
    .registers 3

    .line 55
    iput-object p1, p0, Lcom/vivo/push/ups/VUpsManager$3;->b:Lcom/vivo/push/ups/VUpsManager;

    iput-object p2, p0, Lcom/vivo/push/ups/VUpsManager$3;->a:Lcom/vivo/push/ups/UPSTurnCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStateChanged(I)V
    .registers 4

    .line 58
    iget-object v0, p0, Lcom/vivo/push/ups/VUpsManager$3;->a:Lcom/vivo/push/ups/UPSTurnCallback;

    new-instance v1, Lcom/vivo/push/ups/CodeResult;

    invoke-direct {v1, p1}, Lcom/vivo/push/ups/CodeResult;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/vivo/push/ups/UPSTurnCallback;->onResult(Ljava/lang/Object;)V

    return-void
.end method
