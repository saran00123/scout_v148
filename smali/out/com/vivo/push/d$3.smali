.class final Lcom/vivo/push/d$3;
.super Ljava/lang/Object;
.source "PushClientManager.java"

# interfaces
.implements Lcom/vivo/push/IPushActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/push/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/push/d;


# direct methods
.method constructor <init>(Lcom/vivo/push/d;)V
    .registers 2

    .line 432
    iput-object p1, p0, Lcom/vivo/push/d$3;->a:Lcom/vivo/push/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStateChanged(I)V
    .registers 4

    const-string v0, "APP_TOKEN"

    if-nez p1, :cond_1e

    .line 437
    iget-object p1, p0, Lcom/vivo/push/d$3;->a:Lcom/vivo/push/d;

    const-string v1, ""

    .line 1064
    iput-object v1, p1, Lcom/vivo/push/d;->h:Ljava/lang/String;

    .line 2064
    iget-object p1, p1, Lcom/vivo/push/d;->g:Lcom/vivo/push/util/a;

    .line 438
    invoke-virtual {p1, v0, v1}, Lcom/vivo/push/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object p1, p0, Lcom/vivo/push/d$3;->a:Lcom/vivo/push/d;

    .line 3064
    invoke-virtual {p1}, Lcom/vivo/push/d;->d()V

    .line 442
    iget-object p1, p0, Lcom/vivo/push/d$3;->a:Lcom/vivo/push/d;

    .line 4506
    iget-object p1, p1, Lcom/vivo/push/d;->g:Lcom/vivo/push/util/a;

    const-string v0, "APP_TAGS"

    invoke-virtual {p1, v0}, Lcom/vivo/push/util/a;->c(Ljava/lang/String;)V

    return-void

    .line 444
    :cond_1e
    iget-object p1, p0, Lcom/vivo/push/d$3;->a:Lcom/vivo/push/d;

    const/4 v1, 0x0

    .line 5064
    iput-object v1, p1, Lcom/vivo/push/d;->h:Ljava/lang/String;

    .line 6064
    iget-object p1, p1, Lcom/vivo/push/d;->g:Lcom/vivo/push/util/a;

    .line 445
    invoke-virtual {p1, v0}, Lcom/vivo/push/util/a;->c(Ljava/lang/String;)V

    return-void
.end method
