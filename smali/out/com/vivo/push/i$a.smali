.class final Lcom/vivo/push/i$a;
.super Landroid/os/Handler;
.source "Worker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/push/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/push/i;


# direct methods
.method public constructor <init>(Lcom/vivo/push/i;Landroid/os/Looper;)V
    .registers 3

    .line 54
    iput-object p1, p0, Lcom/vivo/push/i$a;->a:Lcom/vivo/push/i;

    .line 55
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 65
    iget-object v0, p0, Lcom/vivo/push/i$a;->a:Lcom/vivo/push/i;

    invoke-virtual {v0, p1}, Lcom/vivo/push/i;->b(Landroid/os/Message;)V

    return-void
.end method
