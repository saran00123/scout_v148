.class Lcom/taobao/accs/net/t;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taobao/accs/data/Message;

.field final synthetic b:Z

.field final synthetic c:Lcom/taobao/accs/net/s;


# direct methods
.method constructor <init>(Lcom/taobao/accs/net/s;Lcom/taobao/accs/data/Message;Z)V
    .registers 4

    .line 158
    iput-object p1, p0, Lcom/taobao/accs/net/t;->c:Lcom/taobao/accs/net/s;

    iput-object p2, p0, Lcom/taobao/accs/net/t;->a:Lcom/taobao/accs/data/Message;

    iput-boolean p3, p0, Lcom/taobao/accs/net/t;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 163
    iget-object v0, p0, Lcom/taobao/accs/net/t;->c:Lcom/taobao/accs/net/s;

    invoke-static {v0}, Lcom/taobao/accs/net/s;->a(Lcom/taobao/accs/net/s;)Ljava/util/LinkedList;

    move-result-object v0

    monitor-enter v0

    .line 164
    :try_start_7
    iget-object v1, p0, Lcom/taobao/accs/net/t;->c:Lcom/taobao/accs/net/s;

    iget-object v2, p0, Lcom/taobao/accs/net/t;->a:Lcom/taobao/accs/data/Message;

    invoke-static {v1, v2}, Lcom/taobao/accs/net/s;->a(Lcom/taobao/accs/net/s;Lcom/taobao/accs/data/Message;)V

    .line 165
    iget-object v1, p0, Lcom/taobao/accs/net/t;->c:Lcom/taobao/accs/net/s;

    invoke-static {v1}, Lcom/taobao/accs/net/s;->a(Lcom/taobao/accs/net/s;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_27

    .line 166
    iget-object v1, p0, Lcom/taobao/accs/net/t;->c:Lcom/taobao/accs/net/s;

    invoke-static {v1}, Lcom/taobao/accs/net/s;->a(Lcom/taobao/accs/net/s;)Ljava/util/LinkedList;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/net/t;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_99

    .line 168
    :cond_27
    iget-object v1, p0, Lcom/taobao/accs/net/t;->c:Lcom/taobao/accs/net/s;

    invoke-static {v1}, Lcom/taobao/accs/net/s;->a(Lcom/taobao/accs/net/s;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/accs/data/Message;

    .line 169
    iget-object v2, p0, Lcom/taobao/accs/net/t;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->a()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v2, v3, :cond_7f

    iget-object v2, p0, Lcom/taobao/accs/net/t;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->a()I

    move-result v2

    if-nez v2, :cond_46

    goto :goto_7f

    .line 174
    :cond_46
    iget-object v2, p0, Lcom/taobao/accs/net/t;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->a()I

    move-result v2

    if-ne v2, v4, :cond_73

    invoke-virtual {v1}, Lcom/taobao/accs/data/Message;->a()I

    move-result v2

    if-ne v2, v4, :cond_73

    .line 175
    iget-boolean v1, v1, Lcom/taobao/accs/data/Message;->d:Z

    if-nez v1, :cond_99

    iget-object v1, p0, Lcom/taobao/accs/net/t;->a:Lcom/taobao/accs/data/Message;

    iget-boolean v1, v1, Lcom/taobao/accs/data/Message;->d:Z

    if-eqz v1, :cond_99

    .line 176
    iget-object v1, p0, Lcom/taobao/accs/net/t;->c:Lcom/taobao/accs/net/s;

    invoke-static {v1}, Lcom/taobao/accs/net/s;->a(Lcom/taobao/accs/net/s;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 177
    iget-object v1, p0, Lcom/taobao/accs/net/t;->c:Lcom/taobao/accs/net/s;

    invoke-static {v1}, Lcom/taobao/accs/net/s;->a(Lcom/taobao/accs/net/s;)Ljava/util/LinkedList;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/net/t;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_99

    .line 180
    :cond_73
    iget-object v1, p0, Lcom/taobao/accs/net/t;->c:Lcom/taobao/accs/net/s;

    invoke-static {v1}, Lcom/taobao/accs/net/s;->a(Lcom/taobao/accs/net/s;)Ljava/util/LinkedList;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/net/t;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_99

    .line 170
    :cond_7f
    :goto_7f
    iget-object v2, p0, Lcom/taobao/accs/net/t;->c:Lcom/taobao/accs/net/s;

    invoke-static {v2}, Lcom/taobao/accs/net/s;->a(Lcom/taobao/accs/net/s;)Ljava/util/LinkedList;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/accs/net/t;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 171
    invoke-virtual {v1}, Lcom/taobao/accs/data/Message;->a()I

    move-result v1

    if-ne v1, v4, :cond_99

    .line 172
    iget-object v1, p0, Lcom/taobao/accs/net/t;->c:Lcom/taobao/accs/net/s;

    invoke-static {v1}, Lcom/taobao/accs/net/s;->a(Lcom/taobao/accs/net/s;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 184
    :cond_99
    :goto_99
    iget-boolean v1, p0, Lcom/taobao/accs/net/t;->b:Z

    if-nez v1, :cond_a6

    iget-object v1, p0, Lcom/taobao/accs/net/t;->c:Lcom/taobao/accs/net/s;

    invoke-static {v1}, Lcom/taobao/accs/net/s;->b(Lcom/taobao/accs/net/s;)I

    move-result v1
    :try_end_a3
    .catchall {:try_start_7 .. :try_end_a3} :catchall_b6

    const/4 v2, 0x3

    if-ne v1, v2, :cond_b4

    .line 186
    :cond_a6
    :try_start_a6
    iget-object v1, p0, Lcom/taobao/accs/net/t;->c:Lcom/taobao/accs/net/s;

    invoke-static {v1}, Lcom/taobao/accs/net/s;->a(Lcom/taobao/accs/net/s;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_af} :catch_b0
    .catchall {:try_start_a6 .. :try_end_af} :catchall_b6

    goto :goto_b4

    :catch_b0
    move-exception v1

    .line 188
    :try_start_b1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 191
    :cond_b4
    :goto_b4
    monitor-exit v0

    return-void

    :catchall_b6
    move-exception v1

    monitor-exit v0
    :try_end_b8
    .catchall {:try_start_b1 .. :try_end_b8} :catchall_b6

    throw v1
.end method
