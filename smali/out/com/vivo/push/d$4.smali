.class final Lcom/vivo/push/d$4;
.super Ljava/lang/Object;
.source "PushClientManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/push/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/push/b/b;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/vivo/push/d;


# direct methods
.method constructor <init>(Lcom/vivo/push/d;Lcom/vivo/push/b/b;Ljava/lang/String;)V
    .registers 4

    .line 477
    iput-object p1, p0, Lcom/vivo/push/d$4;->c:Lcom/vivo/push/d;

    iput-object p2, p0, Lcom/vivo/push/d$4;->a:Lcom/vivo/push/b/b;

    iput-object p3, p0, Lcom/vivo/push/d$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 481
    iget-object v0, p0, Lcom/vivo/push/d$4;->c:Lcom/vivo/push/d;

    iget-object v1, p0, Lcom/vivo/push/d$4;->a:Lcom/vivo/push/b/b;

    invoke-virtual {v0, v1}, Lcom/vivo/push/d;->a(Lcom/vivo/push/g;)V

    .line 482
    iget-object v0, p0, Lcom/vivo/push/d$4;->c:Lcom/vivo/push/d;

    iget-object v1, p0, Lcom/vivo/push/d$4;->b:Ljava/lang/String;

    .line 1064
    invoke-virtual {v0, v1}, Lcom/vivo/push/d;->c(Ljava/lang/String;)V

    return-void
.end method
