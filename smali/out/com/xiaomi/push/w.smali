.class public final Lcom/xiaomi/push/w;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/content/Context;

.field private a:Ljava/io/RandomAccessFile;

.field private a:Ljava/lang/String;

.field private a:Ljava/nio/channels/FileLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/push/w;->a:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/w;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;)Lcom/xiaomi/push/w;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Locking: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".LOCK"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_42

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_42
    sget-object v1, Lcom/xiaomi/push/w;->a:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ab

    new-instance v1, Lcom/xiaomi/push/w;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/w;-><init>(Landroid/content/Context;)V

    iput-object p1, v1, Lcom/xiaomi/push/w;->a:Ljava/lang/String;

    :try_start_51
    new-instance p0, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {p0, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p0, v1, Lcom/xiaomi/push/w;->a:Ljava/io/RandomAccessFile;

    iget-object p0, v1, Lcom/xiaomi/push/w;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object p0

    iput-object p0, v1, Lcom/xiaomi/push/w;->a:Ljava/nio/channels/FileLock;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Locked: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " :"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v1, Lcom/xiaomi/push/w;->a:Ljava/nio/channels/FileLock;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V
    :try_end_84
    .catchall {:try_start_51 .. :try_end_84} :catchall_97

    iget-object p0, v1, Lcom/xiaomi/push/w;->a:Ljava/nio/channels/FileLock;

    if-nez p0, :cond_96

    iget-object p0, v1, Lcom/xiaomi/push/w;->a:Ljava/io/RandomAccessFile;

    if-eqz p0, :cond_8f

    invoke-static {p0}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    :cond_8f
    sget-object p0, Lcom/xiaomi/push/w;->a:Ljava/util/Set;

    iget-object p1, v1, Lcom/xiaomi/push/w;->a:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_96
    return-object v1

    :catchall_97
    move-exception p0

    iget-object p1, v1, Lcom/xiaomi/push/w;->a:Ljava/nio/channels/FileLock;

    if-nez p1, :cond_aa

    iget-object p1, v1, Lcom/xiaomi/push/w;->a:Ljava/io/RandomAccessFile;

    if-eqz p1, :cond_a3

    invoke-static {p1}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    :cond_a3
    sget-object p1, Lcom/xiaomi/push/w;->a:Ljava/util/Set;

    iget-object v0, v1, Lcom/xiaomi/push/w;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_aa
    throw p0

    :cond_ab
    new-instance p0, Ljava/io/IOException;

    const-string p1, "abtain lock failure"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unLock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/w;->a:Ljava/nio/channels/FileLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/w;->a:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-eqz v0, :cond_28

    :try_start_20
    iget-object v0, p0, Lcom/xiaomi/push/w;->a:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_25} :catch_25

    :catch_25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/w;->a:Ljava/nio/channels/FileLock;

    :cond_28
    iget-object v0, p0, Lcom/xiaomi/push/w;->a:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_2f

    invoke-static {v0}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    :cond_2f
    sget-object v0, Lcom/xiaomi/push/w;->a:Ljava/util/Set;

    iget-object v1, p0, Lcom/xiaomi/push/w;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
