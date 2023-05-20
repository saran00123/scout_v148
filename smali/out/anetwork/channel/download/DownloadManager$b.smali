.class Lanetwork/channel/download/DownloadManager$b;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanetwork/channel/download/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final a:I

.field final b:Ljava/net/URL;

.field final synthetic c:Lanetwork/channel/download/DownloadManager;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lanetwork/channel/download/DownloadManager$DownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile h:Lanetwork/channel/aidl/Connection;

.field private i:Z


# direct methods
.method constructor <init>(Lanetwork/channel/download/DownloadManager;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Lanetwork/channel/download/DownloadManager$DownloadListener;)V
    .registers 8

    .line 156
    iput-object p1, p0, Lanetwork/channel/download/DownloadManager$b;->c:Lanetwork/channel/download/DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lanetwork/channel/download/DownloadManager$b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 152
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lanetwork/channel/download/DownloadManager$b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lanetwork/channel/download/DownloadManager$b;->h:Lanetwork/channel/aidl/Connection;

    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lanetwork/channel/download/DownloadManager$b;->i:Z

    .line 157
    iget-object v0, p1, Lanetwork/channel/download/DownloadManager;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lanetwork/channel/download/DownloadManager$b;->a:I

    .line 158
    iput-object p2, p0, Lanetwork/channel/download/DownloadManager$b;->b:Ljava/net/URL;

    .line 159
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 160
    invoke-direct {p0, p2}, Lanetwork/channel/download/DownloadManager$b;->a(Ljava/net/URL;)Ljava/lang/String;

    move-result-object p4

    .line 162
    :cond_2e
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3b

    .line 163
    invoke-static {p1, p4}, Lanetwork/channel/download/DownloadManager;->a(Lanetwork/channel/download/DownloadManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanetwork/channel/download/DownloadManager$b;->d:Ljava/lang/String;

    goto :goto_7d

    :cond_3b
    const-string p1, "/"

    .line 165
    invoke-virtual {p3, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_55

    .line 166
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanetwork/channel/download/DownloadManager$b;->d:Ljava/lang/String;

    goto :goto_6b

    .line 168
    :cond_55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2f

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanetwork/channel/download/DownloadManager$b;->d:Ljava/lang/String;

    :goto_6b
    const-string p1, "/data/user"

    .line 171
    invoke-virtual {p3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7b

    const-string p1, "/data/data"

    invoke-virtual {p3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7d

    .line 172
    :cond_7b
    iput-boolean v1, p0, Lanetwork/channel/download/DownloadManager$b;->i:Z

    .line 176
    :cond_7d
    :goto_7d
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lanetwork/channel/download/DownloadManager$b;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 177
    iget-object p1, p0, Lanetwork/channel/download/DownloadManager$b;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(ILjava/util/Map;J)J
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;J)J"
        }
    .end annotation

    const/16 v0, 0xc8

    const-string v1, "Content-Length"

    const-wide/16 v2, 0x0

    if-ne p1, v0, :cond_11

    .line 336
    :try_start_8
    invoke-static {p2, v1}, Lanet/channel/util/HttpHelper;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_42

    :cond_11
    const/16 v0, 0xce

    if-ne p1, v0, :cond_42

    const-string p1, "Content-Range"

    .line 338
    invoke-static {p2, p1}, Lanet/channel/util/HttpHelper;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_31

    const/16 v0, 0x2f

    .line 340
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_31

    add-int/lit8 v0, v0, 0x1

    .line 342
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_30} :catch_42

    goto :goto_32

    :cond_31
    move-wide v4, v2

    :goto_32
    cmp-long p1, v4, v2

    if-nez p1, :cond_41

    .line 346
    :try_start_36
    invoke-static {p2, v1}, Lanet/channel/util/HttpHelper;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3e} :catch_41

    add-long v2, p1, p3

    goto :goto_42

    :catch_41
    :cond_41
    move-wide v2, v4

    :catch_42
    :cond_42
    :goto_42
    return-wide v2
.end method

.method private a(Ljava/net/URL;)Ljava/lang/String;
    .registers 5

    .line 368
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    .line 369
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_18

    add-int/lit8 v1, v1, 0x1

    .line 372
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 374
    :goto_19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 375
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanet/channel/util/StringUtils;->md5ToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2d

    .line 377
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    :cond_2d
    return-object v0
.end method

.method private a(ILjava/lang/String;)V
    .registers 6

    .line 317
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 318
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$b;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanetwork/channel/download/DownloadManager$DownloadListener;

    .line 319
    iget v2, p0, Lanetwork/channel/download/DownloadManager$b;->a:I

    invoke-interface {v1, v2, p1, p2}, Lanetwork/channel/download/DownloadManager$DownloadListener;->onFail(IILjava/lang/String;)V

    goto :goto_10

    :cond_22
    return-void
.end method

.method private a(JJ)V
    .registers 13

    .line 325
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_23

    .line 326
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$b;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lanetwork/channel/download/DownloadManager$DownloadListener;

    .line 327
    iget v3, p0, Lanetwork/channel/download/DownloadManager$b;->a:I

    move-wide v4, p1

    move-wide v6, p3

    invoke-interface/range {v2 .. v7}, Lanetwork/channel/download/DownloadManager$DownloadListener;->onProgress(IJJ)V

    goto :goto_e

    :cond_23
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    .line 309
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 310
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$b;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanetwork/channel/download/DownloadManager$DownloadListener;

    .line 311
    iget v2, p0, Lanetwork/channel/download/DownloadManager$b;->a:I

    invoke-interface {v1, v2, p1}, Lanetwork/channel/download/DownloadManager$DownloadListener;->onSuccess(ILjava/lang/String;)V

    goto :goto_10

    :cond_22
    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lanetwork/channel/Header;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_21

    .line 357
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    .line 358
    :cond_6
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 359
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/Header;

    invoke-interface {v0}, Lanetwork/channel/Header;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Range"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 360
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    :cond_21
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 189
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v0, -0x69

    const-string v1, "download canceled."

    .line 190
    invoke-direct {p0, v0, v1}, Lanetwork/channel/download/DownloadManager$b;->a(ILjava/lang/String;)V

    .line 191
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$b;->h:Lanetwork/channel/aidl/Connection;

    if-eqz v0, :cond_16

    .line 193
    :try_start_11
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$b;->h:Lanetwork/channel/aidl/Connection;

    invoke-interface {v0}, Lanetwork/channel/aidl/Connection;->cancel()V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_16

    :catch_16
    :cond_16
    return-void
.end method

.method public a(Lanetwork/channel/download/DownloadManager$DownloadListener;)Z
    .registers 3

    .line 181
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 184
    :cond_a
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$b;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public run()V
    .registers 16

    .line 201
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 209
    :try_start_b
    iget-object v2, p0, Lanetwork/channel/download/DownloadManager$b;->c:Lanetwork/channel/download/DownloadManager;

    iget-object v3, p0, Lanetwork/channel/download/DownloadManager$b;->b:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lanetwork/channel/download/DownloadManager$b;->i:Z

    invoke-static {v2, v3, v4}, Lanetwork/channel/download/DownloadManager;->a(Lanetwork/channel/download/DownloadManager;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v2

    .line 210
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    .line 212
    new-instance v4, Lanetwork/channel/entity/RequestImpl;

    iget-object v5, p0, Lanetwork/channel/download/DownloadManager$b;->b:Ljava/net/URL;

    invoke-direct {v4, v5}, Lanetwork/channel/entity/RequestImpl;-><init>(Ljava/net/URL;)V

    .line 213
    invoke-virtual {v4, v0}, Lanetwork/channel/entity/RequestImpl;->setRetryTime(I)V

    const/4 v5, 0x1

    .line 214
    invoke-virtual {v4, v5}, Lanetwork/channel/entity/RequestImpl;->setFollowRedirects(Z)V

    if-eqz v3, :cond_4c

    const-string v5, "Range"

    .line 216
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bytes="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lanetwork/channel/entity/RequestImpl;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_4c
    new-instance v5, Lanetwork/channel/degrade/DegradableNetwork;

    iget-object v6, p0, Lanetwork/channel/download/DownloadManager$b;->c:Lanetwork/channel/download/DownloadManager;

    iget-object v6, v6, Lanetwork/channel/download/DownloadManager;->d:Landroid/content/Context;

    invoke-direct {v5, v6}, Lanetwork/channel/degrade/DegradableNetwork;-><init>(Landroid/content/Context;)V

    .line 220
    invoke-virtual {v5, v4, v1}, Lanetwork/channel/degrade/DegradableNetwork;->getConnection(Lanetwork/channel/Request;Ljava/lang/Object;)Lanetwork/channel/aidl/Connection;

    move-result-object v6

    iput-object v6, p0, Lanetwork/channel/download/DownloadManager$b;->h:Lanetwork/channel/aidl/Connection;

    .line 221
    iget-object v6, p0, Lanetwork/channel/download/DownloadManager$b;->h:Lanetwork/channel/aidl/Connection;

    invoke-interface {v6}, Lanetwork/channel/aidl/Connection;->getStatusCode()I

    move-result v6

    if-lez v6, :cond_1f5

    const/16 v7, 0x1a0

    const/16 v8, 0xc8

    if-eq v6, v8, :cond_71

    const/16 v9, 0xce

    if-eq v6, v9, :cond_71

    if-eq v6, v7, :cond_71

    goto/16 :goto_1f5

    :cond_71
    if-eqz v3, :cond_a1

    if-ne v6, v7, :cond_9e

    .line 235
    invoke-virtual {v4}, Lanetwork/channel/entity/RequestImpl;->getHeaders()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lanetwork/channel/download/DownloadManager$b;->a(Ljava/util/List;)V

    .line 237
    iget-object v3, p0, Lanetwork/channel/download/DownloadManager$b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_82} :catch_222
    .catchall {:try_start_b .. :try_end_82} :catchall_21e

    if-eqz v3, :cond_97

    .line 302
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$b;->c:Lanetwork/channel/download/DownloadManager;

    iget-object v3, v0, Lanetwork/channel/download/DownloadManager;->a:Landroid/util/SparseArray;

    monitor-enter v3

    .line 303
    :try_start_89
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$b;->c:Lanetwork/channel/download/DownloadManager;

    iget-object v0, v0, Lanetwork/channel/download/DownloadManager;->a:Landroid/util/SparseArray;

    iget v1, p0, Lanetwork/channel/download/DownloadManager$b;->a:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 304
    monitor-exit v3

    return-void

    :catchall_94
    move-exception v0

    monitor-exit v3
    :try_end_96
    .catchall {:try_start_89 .. :try_end_96} :catchall_94

    throw v0

    .line 240
    :cond_97
    :try_start_97
    invoke-virtual {v5, v4, v1}, Lanetwork/channel/degrade/DegradableNetwork;->getConnection(Lanetwork/channel/Request;Ljava/lang/Object;)Lanetwork/channel/aidl/Connection;

    move-result-object v3

    iput-object v3, p0, Lanetwork/channel/download/DownloadManager$b;->h:Lanetwork/channel/aidl/Connection;

    move v3, v0

    :cond_9e
    if-ne v6, v8, :cond_a1

    move v3, v0

    .line 249
    :cond_a1
    iget-object v4, p0, Lanetwork/channel/download/DownloadManager$b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_a7} :catch_222
    .catchall {:try_start_97 .. :try_end_a7} :catchall_21e

    if-eqz v4, :cond_bc

    .line 302
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$b;->c:Lanetwork/channel/download/DownloadManager;

    iget-object v4, v0, Lanetwork/channel/download/DownloadManager;->a:Landroid/util/SparseArray;

    monitor-enter v4

    .line 303
    :try_start_ae
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$b;->c:Lanetwork/channel/download/DownloadManager;

    iget-object v0, v0, Lanetwork/channel/download/DownloadManager;->a:Landroid/util/SparseArray;

    iget v1, p0, Lanetwork/channel/download/DownloadManager$b;->a:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 304
    monitor-exit v4

    return-void

    :catchall_b9
    move-exception v0

    monitor-exit v4
    :try_end_bb
    .catchall {:try_start_ae .. :try_end_bb} :catchall_b9

    throw v0

    :cond_bc
    const-wide/16 v4, 0x0

    if-nez v3, :cond_cc

    .line 255
    :try_start_c0
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v7, v1

    goto :goto_ea

    .line 257
    :cond_cc
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v3, v2, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_d3} :catch_222
    .catchall {:try_start_c0 .. :try_end_d3} :catchall_21e

    .line 258
    :try_start_d3
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    .line 259
    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 260
    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    invoke-static {v8}, Ljava/nio/channels/Channels;->newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_e7} :catch_1f0
    .catchall {:try_start_d3 .. :try_end_e7} :catchall_1eb

    move-object v14, v7

    move-object v7, v3

    move-object v3, v14

    .line 263
    :goto_ea
    :try_start_ea
    iget-object v8, p0, Lanetwork/channel/download/DownloadManager$b;->h:Lanetwork/channel/aidl/Connection;

    .line 264
    invoke-interface {v8}, Lanetwork/channel/aidl/Connection;->getConnHeadFields()Ljava/util/Map;

    move-result-object v8

    .line 263
    invoke-direct {p0, v6, v8, v4, v5}, Lanetwork/channel/download/DownloadManager$b;->a(ILjava/util/Map;J)J

    move-result-wide v8

    .line 266
    iget-object v6, p0, Lanetwork/channel/download/DownloadManager$b;->h:Lanetwork/channel/aidl/Connection;

    invoke-interface {v6}, Lanetwork/channel/aidl/Connection;->getInputStream()Lanetwork/channel/aidl/ParcelableInputStream;

    move-result-object v6
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_fa} :catch_1e8
    .catchall {:try_start_ea .. :try_end_fa} :catchall_1e4

    if-nez v6, :cond_123

    const/16 v2, -0x67

    :try_start_fe
    const-string v4, "input stream is null."

    .line 268
    invoke-direct {p0, v2, v4}, Lanetwork/channel/download/DownloadManager$b;->a(ILjava/lang/String;)V
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_103} :catch_1e2
    .catchall {:try_start_fe .. :try_end_103} :catchall_25a

    .line 299
    :try_start_103
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_106} :catch_106

    :catch_106
    if-eqz v7, :cond_10b

    .line 300
    :try_start_108
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_10b} :catch_10b

    :catch_10b
    :cond_10b
    if-eqz v6, :cond_110

    .line 301
    :try_start_10d
    invoke-interface {v6}, Lanetwork/channel/aidl/ParcelableInputStream;->close()V
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_110} :catch_110

    .line 302
    :catch_110
    :cond_110
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$b;->c:Lanetwork/channel/download/DownloadManager;

    iget-object v0, v0, Lanetwork/channel/download/DownloadManager;->a:Landroid/util/SparseArray;

    monitor-enter v0

    .line 303
    :try_start_115
    iget-object v1, p0, Lanetwork/channel/download/DownloadManager$b;->c:Lanetwork/channel/download/DownloadManager;

    iget-object v1, v1, Lanetwork/channel/download/DownloadManager;->a:Landroid/util/SparseArray;

    iget v2, p0, Lanetwork/channel/download/DownloadManager$b;->a:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 304
    monitor-exit v0

    return-void

    :catchall_120
    move-exception v1

    monitor-exit v0
    :try_end_122
    .catchall {:try_start_115 .. :try_end_122} :catchall_120

    throw v1

    :cond_123
    const/16 v10, 0x800

    .line 274
    :try_start_125
    new-array v10, v10, [B

    move v11, v0

    .line 275
    :goto_128
    invoke-interface {v6, v10}, Lanetwork/channel/aidl/ParcelableInputStream;->read([B)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_166

    .line 276
    iget-object v13, p0, Lanetwork/channel/download/DownloadManager$b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v13

    if-eqz v13, :cond_15c

    .line 277
    iget-object v2, p0, Lanetwork/channel/download/DownloadManager$b;->h:Lanetwork/channel/aidl/Connection;

    invoke-interface {v2}, Lanetwork/channel/aidl/Connection;->cancel()V
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_125 .. :try_end_13c} :catch_1e2
    .catchall {:try_start_125 .. :try_end_13c} :catchall_25a

    .line 299
    :try_start_13c
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_13f
    .catch Ljava/lang/Exception; {:try_start_13c .. :try_end_13f} :catch_13f

    :catch_13f
    if-eqz v7, :cond_144

    .line 300
    :try_start_141
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_144
    .catch Ljava/lang/Exception; {:try_start_141 .. :try_end_144} :catch_144

    :catch_144
    :cond_144
    if-eqz v6, :cond_149

    .line 301
    :try_start_146
    invoke-interface {v6}, Lanetwork/channel/aidl/ParcelableInputStream;->close()V
    :try_end_149
    .catch Ljava/lang/Exception; {:try_start_146 .. :try_end_149} :catch_149

    .line 302
    :catch_149
    :cond_149
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$b;->c:Lanetwork/channel/download/DownloadManager;

    iget-object v0, v0, Lanetwork/channel/download/DownloadManager;->a:Landroid/util/SparseArray;

    monitor-enter v0

    .line 303
    :try_start_14e
    iget-object v1, p0, Lanetwork/channel/download/DownloadManager$b;->c:Lanetwork/channel/download/DownloadManager;

    iget-object v1, v1, Lanetwork/channel/download/DownloadManager;->a:Landroid/util/SparseArray;

    iget v2, p0, Lanetwork/channel/download/DownloadManager$b;->a:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 304
    monitor-exit v0

    return-void

    :catchall_159
    move-exception v1

    monitor-exit v0
    :try_end_15b
    .catchall {:try_start_14e .. :try_end_15b} :catchall_159

    throw v1

    :cond_15c
    add-int/2addr v11, v12

    .line 281
    :try_start_15d
    invoke-virtual {v3, v10, v0, v12}, Ljava/io/BufferedOutputStream;->write([BII)V

    int-to-long v12, v11

    add-long/2addr v12, v4

    .line 282
    invoke-direct {p0, v12, v13, v8, v9}, Lanetwork/channel/download/DownloadManager$b;->a(JJ)V

    goto :goto_128

    .line 284
    :cond_166
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 286
    iget-object v4, p0, Lanetwork/channel/download/DownloadManager$b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4
    :try_end_16f
    .catch Ljava/lang/Exception; {:try_start_15d .. :try_end_16f} :catch_1e2
    .catchall {:try_start_15d .. :try_end_16f} :catchall_25a

    if-eqz v4, :cond_191

    .line 299
    :try_start_171
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_174
    .catch Ljava/lang/Exception; {:try_start_171 .. :try_end_174} :catch_174

    :catch_174
    if-eqz v7, :cond_179

    .line 300
    :try_start_176
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_179
    .catch Ljava/lang/Exception; {:try_start_176 .. :try_end_179} :catch_179

    :catch_179
    :cond_179
    if-eqz v6, :cond_17e

    .line 301
    :try_start_17b
    invoke-interface {v6}, Lanetwork/channel/aidl/ParcelableInputStream;->close()V
    :try_end_17e
    .catch Ljava/lang/Exception; {:try_start_17b .. :try_end_17e} :catch_17e

    .line 302
    :catch_17e
    :cond_17e
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$b;->c:Lanetwork/channel/download/DownloadManager;

    iget-object v4, v0, Lanetwork/channel/download/DownloadManager;->a:Landroid/util/SparseArray;

    monitor-enter v4

    .line 303
    :try_start_183
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$b;->c:Lanetwork/channel/download/DownloadManager;

    iget-object v0, v0, Lanetwork/channel/download/DownloadManager;->a:Landroid/util/SparseArray;

    iget v1, p0, Lanetwork/channel/download/DownloadManager$b;->a:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 304
    monitor-exit v4

    return-void

    :catchall_18e
    move-exception v0

    monitor-exit v4
    :try_end_190
    .catchall {:try_start_183 .. :try_end_190} :catchall_18e

    throw v0

    .line 289
    :cond_191
    :try_start_191
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lanetwork/channel/download/DownloadManager$b;->d:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1a4

    .line 291
    iget-object v2, p0, Lanetwork/channel/download/DownloadManager$b;->d:Ljava/lang/String;

    invoke-direct {p0, v2}, Lanetwork/channel/download/DownloadManager$b;->a(Ljava/lang/String;)V

    goto :goto_1c1

    :cond_1a4
    const/16 v2, -0x6a

    .line 293
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file rename to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lanetwork/channel/download/DownloadManager$b;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lanetwork/channel/download/DownloadManager$b;->a(ILjava/lang/String;)V
    :try_end_1c1
    .catch Ljava/lang/Exception; {:try_start_191 .. :try_end_1c1} :catch_1e2
    .catchall {:try_start_191 .. :try_end_1c1} :catchall_25a

    .line 299
    :goto_1c1
    :try_start_1c1
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1c4
    .catch Ljava/lang/Exception; {:try_start_1c1 .. :try_end_1c4} :catch_1c4

    :catch_1c4
    if-eqz v7, :cond_1c9

    .line 300
    :try_start_1c6
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1c9
    .catch Ljava/lang/Exception; {:try_start_1c6 .. :try_end_1c9} :catch_1c9

    :catch_1c9
    :cond_1c9
    if-eqz v6, :cond_1ce

    .line 301
    :try_start_1cb
    invoke-interface {v6}, Lanetwork/channel/aidl/ParcelableInputStream;->close()V
    :try_end_1ce
    .catch Ljava/lang/Exception; {:try_start_1cb .. :try_end_1ce} :catch_1ce

    .line 302
    :catch_1ce
    :cond_1ce
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$b;->c:Lanetwork/channel/download/DownloadManager;

    iget-object v0, v0, Lanetwork/channel/download/DownloadManager;->a:Landroid/util/SparseArray;

    monitor-enter v0

    .line 303
    :try_start_1d3
    iget-object v1, p0, Lanetwork/channel/download/DownloadManager$b;->c:Lanetwork/channel/download/DownloadManager;

    iget-object v1, v1, Lanetwork/channel/download/DownloadManager;->a:Landroid/util/SparseArray;

    iget v2, p0, Lanetwork/channel/download/DownloadManager$b;->a:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 304
    monitor-exit v0

    goto/16 :goto_256

    :catchall_1df
    move-exception v1

    monitor-exit v0
    :try_end_1e1
    .catchall {:try_start_1d3 .. :try_end_1e1} :catchall_1df

    throw v1

    :catch_1e2
    move-exception v2

    goto :goto_226

    :catchall_1e4
    move-exception v0

    move-object v6, v1

    goto/16 :goto_25b

    :catch_1e8
    move-exception v2

    move-object v6, v1

    goto :goto_226

    :catchall_1eb
    move-exception v0

    move-object v6, v1

    move-object v7, v3

    goto/16 :goto_25c

    :catch_1f0
    move-exception v2

    move-object v6, v1

    move-object v7, v3

    move-object v3, v6

    goto :goto_226

    :cond_1f5
    :goto_1f5
    const/16 v2, -0x66

    .line 227
    :try_start_1f7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ResponseCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lanetwork/channel/download/DownloadManager$b;->a(ILjava/lang/String;)V
    :try_end_20b
    .catch Ljava/lang/Exception; {:try_start_1f7 .. :try_end_20b} :catch_222
    .catchall {:try_start_1f7 .. :try_end_20b} :catchall_21e

    .line 302
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$b;->c:Lanetwork/channel/download/DownloadManager;

    iget-object v0, v0, Lanetwork/channel/download/DownloadManager;->a:Landroid/util/SparseArray;

    monitor-enter v0

    .line 303
    :try_start_210
    iget-object v1, p0, Lanetwork/channel/download/DownloadManager$b;->c:Lanetwork/channel/download/DownloadManager;

    iget-object v1, v1, Lanetwork/channel/download/DownloadManager;->a:Landroid/util/SparseArray;

    iget v2, p0, Lanetwork/channel/download/DownloadManager$b;->a:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 304
    monitor-exit v0

    return-void

    :catchall_21b
    move-exception v1

    monitor-exit v0
    :try_end_21d
    .catchall {:try_start_210 .. :try_end_21d} :catchall_21b

    throw v1

    :catchall_21e
    move-exception v0

    move-object v6, v1

    move-object v7, v6

    goto :goto_25c

    :catch_222
    move-exception v2

    move-object v3, v1

    move-object v6, v3

    move-object v7, v6

    :goto_226
    :try_start_226
    const-string v4, "anet.DownloadManager"

    const-string v5, "file download failed!"

    .line 296
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v4, v5, v1, v2, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const/16 v0, -0x68

    .line 297
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lanetwork/channel/download/DownloadManager$b;->a(ILjava/lang/String;)V
    :try_end_238
    .catchall {:try_start_226 .. :try_end_238} :catchall_25a

    if-eqz v3, :cond_23d

    .line 299
    :try_start_23a
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_23d
    .catch Ljava/lang/Exception; {:try_start_23a .. :try_end_23d} :catch_23d

    :catch_23d
    :cond_23d
    if-eqz v7, :cond_242

    .line 300
    :try_start_23f
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_242
    .catch Ljava/lang/Exception; {:try_start_23f .. :try_end_242} :catch_242

    :catch_242
    :cond_242
    if-eqz v6, :cond_247

    .line 301
    :try_start_244
    invoke-interface {v6}, Lanetwork/channel/aidl/ParcelableInputStream;->close()V
    :try_end_247
    .catch Ljava/lang/Exception; {:try_start_244 .. :try_end_247} :catch_247

    .line 302
    :catch_247
    :cond_247
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$b;->c:Lanetwork/channel/download/DownloadManager;

    iget-object v0, v0, Lanetwork/channel/download/DownloadManager;->a:Landroid/util/SparseArray;

    monitor-enter v0

    .line 303
    :try_start_24c
    iget-object v1, p0, Lanetwork/channel/download/DownloadManager$b;->c:Lanetwork/channel/download/DownloadManager;

    iget-object v1, v1, Lanetwork/channel/download/DownloadManager;->a:Landroid/util/SparseArray;

    iget v2, p0, Lanetwork/channel/download/DownloadManager$b;->a:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 304
    monitor-exit v0

    :goto_256
    return-void

    :catchall_257
    move-exception v1

    monitor-exit v0
    :try_end_259
    .catchall {:try_start_24c .. :try_end_259} :catchall_257

    throw v1

    :catchall_25a
    move-exception v0

    :goto_25b
    move-object v1, v3

    :goto_25c
    if-eqz v1, :cond_261

    .line 299
    :try_start_25e
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_261
    .catch Ljava/lang/Exception; {:try_start_25e .. :try_end_261} :catch_261

    :catch_261
    :cond_261
    if-eqz v7, :cond_266

    .line 300
    :try_start_263
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_266
    .catch Ljava/lang/Exception; {:try_start_263 .. :try_end_266} :catch_266

    :catch_266
    :cond_266
    if-eqz v6, :cond_26b

    .line 301
    :try_start_268
    invoke-interface {v6}, Lanetwork/channel/aidl/ParcelableInputStream;->close()V
    :try_end_26b
    .catch Ljava/lang/Exception; {:try_start_268 .. :try_end_26b} :catch_26b

    .line 302
    :catch_26b
    :cond_26b
    iget-object v1, p0, Lanetwork/channel/download/DownloadManager$b;->c:Lanetwork/channel/download/DownloadManager;

    iget-object v1, v1, Lanetwork/channel/download/DownloadManager;->a:Landroid/util/SparseArray;

    monitor-enter v1

    .line 303
    :try_start_270
    iget-object v2, p0, Lanetwork/channel/download/DownloadManager$b;->c:Lanetwork/channel/download/DownloadManager;

    iget-object v2, v2, Lanetwork/channel/download/DownloadManager;->a:Landroid/util/SparseArray;

    iget v3, p0, Lanetwork/channel/download/DownloadManager$b;->a:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 304
    monitor-exit v1
    :try_end_27a
    .catchall {:try_start_270 .. :try_end_27a} :catchall_27b

    .line 305
    throw v0

    :catchall_27b
    move-exception v0

    .line 304
    :try_start_27c
    monitor-exit v1
    :try_end_27d
    .catchall {:try_start_27c .. :try_end_27d} :catchall_27b

    throw v0
.end method
