.class final Lcom/vivo/push/d$1;
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
.field final synthetic a:Lcom/vivo/push/d$a;

.field final synthetic b:Lcom/vivo/push/d;


# direct methods
.method constructor <init>(Lcom/vivo/push/d;Lcom/vivo/push/d$a;)V
    .registers 3

    .line 337
    iput-object p1, p0, Lcom/vivo/push/d$1;->b:Lcom/vivo/push/d;

    iput-object p2, p0, Lcom/vivo/push/d$1;->a:Lcom/vivo/push/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStateChanged(I)V
    .registers 4

    if-nez p1, :cond_23

    .line 342
    iget-object p1, p0, Lcom/vivo/push/d$1;->a:Lcom/vivo/push/d$a;

    .line 2083
    iget-object p1, p1, Lcom/vivo/push/d$a;->c:[Ljava/lang/Object;

    if-eqz p1, :cond_1b

    .line 343
    array-length p1, p1

    if-nez p1, :cond_c

    goto :goto_1b

    .line 347
    :cond_c
    iget-object p1, p0, Lcom/vivo/push/d$1;->b:Lcom/vivo/push/d;

    iget-object v0, p0, Lcom/vivo/push/d$1;->a:Lcom/vivo/push/d$a;

    .line 3083
    iget-object v0, v0, Lcom/vivo/push/d$a;->c:[Ljava/lang/Object;

    const/4 v1, 0x0

    .line 347
    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vivo/push/d;->a(Ljava/lang/String;)V

    return-void

    :cond_1b
    :goto_1b
    const-string p1, "PushClientManager"

    const-string v0, "bind app result is null"

    .line 344
    invoke-static {p1, v0}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 349
    :cond_23
    iget-object p1, p0, Lcom/vivo/push/d$1;->b:Lcom/vivo/push/d;

    const/4 v0, 0x0

    .line 4064
    iput-object v0, p1, Lcom/vivo/push/d;->h:Ljava/lang/String;

    .line 5064
    iget-object p1, p1, Lcom/vivo/push/d;->g:Lcom/vivo/push/util/a;

    const-string v0, "APP_TOKEN"

    .line 350
    invoke-virtual {p1, v0}, Lcom/vivo/push/util/a;->c(Ljava/lang/String;)V

    return-void
.end method
