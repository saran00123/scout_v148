.class final Lcom/vivo/push/b$1;
.super Ljava/lang/Object;
.source "IPCManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/push/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/push/b;


# direct methods
.method constructor <init>(Lcom/vivo/push/b;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/vivo/push/b$1;->a:Lcom/vivo/push/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 6

    const-string v0, "AidlManager"

    if-nez p1, :cond_b

    const-string p1, "handleMessage error : msg is null"

    .line 100
    invoke-static {v0, p1}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 103
    :cond_b
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_44

    if-eq v1, v2, :cond_2c

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknow msg what ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/vivo/push/util/n;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    .line 111
    :cond_2c
    iget-object p1, p0, Lcom/vivo/push/b$1;->a:Lcom/vivo/push/b;

    invoke-static {p1}, Lcom/vivo/push/b;->a(Lcom/vivo/push/b;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3e

    .line 112
    iget-object p1, p0, Lcom/vivo/push/b$1;->a:Lcom/vivo/push/b;

    invoke-static {p1}, Lcom/vivo/push/b;->c(Lcom/vivo/push/b;)V

    .line 114
    :cond_3e
    iget-object p1, p0, Lcom/vivo/push/b$1;->a:Lcom/vivo/push/b;

    invoke-static {p1}, Lcom/vivo/push/b;->b(Lcom/vivo/push/b;)V

    goto :goto_5a

    :cond_44
    const-string p1, "In connect, bind core service time out"

    .line 105
    invoke-static {v0, p1}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object p1, p0, Lcom/vivo/push/b$1;->a:Lcom/vivo/push/b;

    invoke-static {p1}, Lcom/vivo/push/b;->a(Lcom/vivo/push/b;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-ne p1, v2, :cond_5a

    .line 107
    iget-object p1, p0, Lcom/vivo/push/b$1;->a:Lcom/vivo/push/b;

    invoke-static {p1}, Lcom/vivo/push/b;->b(Lcom/vivo/push/b;)V

    :cond_5a
    :goto_5a
    return v3
.end method
