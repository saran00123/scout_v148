.class final Lcom/vivo/push/d$5;
.super Ljava/lang/Object;
.source "PushClientManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/push/d;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/vivo/push/d;


# direct methods
.method constructor <init>(Lcom/vivo/push/d;Ljava/lang/String;)V
    .registers 3

    .line 932
    iput-object p1, p0, Lcom/vivo/push/d$5;->b:Lcom/vivo/push/d;

    iput-object p2, p0, Lcom/vivo/push/d$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 935
    iget-object v0, p0, Lcom/vivo/push/d$5;->b:Lcom/vivo/push/d;

    iget-object v1, p0, Lcom/vivo/push/d$5;->a:Ljava/lang/String;

    .line 1064
    invoke-virtual {v0, v1}, Lcom/vivo/push/d;->b(Ljava/lang/String;)Lcom/vivo/push/d$a;

    move-result-object v0

    if-eqz v0, :cond_12

    const/16 v1, 0x3eb

    const/4 v2, 0x0

    .line 937
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/vivo/push/d$a;->a(I[Ljava/lang/Object;)V

    :cond_12
    return-void
.end method
