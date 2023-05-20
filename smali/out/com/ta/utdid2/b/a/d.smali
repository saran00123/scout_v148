.class public Lcom/ta/utdid2/b/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/utdid2/b/a/d$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/Object;

.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/io/File;",
            "Lcom/ta/utdid2/b/a/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ta/utdid2/b/a/d;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ta/utdid2/b/a/d;->a:Ljava/lang/Object;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ta/utdid2/b/a/d;->a:Ljava/util/HashMap;

    if-eqz p1, :cond_21

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_21

    .line 27
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ta/utdid2/b/a/d;->c:Ljava/io/File;

    return-void

    .line 29
    :cond_21
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Directory can not be empty"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a()Ljava/io/File;
    .registers 3

    .line 42
    iget-object v0, p0, Lcom/ta/utdid2/b/a/d;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 43
    :try_start_3
    iget-object v1, p0, Lcom/ta/utdid2/b/a/d;->c:Ljava/io/File;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 44
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private static a(Ljava/io/File;)Ljava/io/File;
    .registers 3

    .line 118
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".bak"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .line 34
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_e

    .line 35
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 37
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " contains a path separator"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a()Ljava/lang/Object;
    .registers 1

    .line 17
    sget-object v0, Lcom/ta/utdid2/b/a/d;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Ljava/io/File;)Ljava/io/File;
    .registers 1

    .line 17
    invoke-static {p0}, Lcom/ta/utdid2/b/a/d;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 48
    invoke-direct {p0}, Lcom/ta/utdid2/b/a/d;->a()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".xml"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/ta/utdid2/b/a/d;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Lcom/ta/utdid2/b/a/b;
    .registers 7

    .line 53
    invoke-direct {p0, p1}, Lcom/ta/utdid2/b/a/d;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 54
    sget-object v0, Lcom/ta/utdid2/b/a/d;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 55
    :try_start_7
    iget-object v1, p0, Lcom/ta/utdid2/b/a/d;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ta/utdid2/b/a/d$a;

    if-eqz v1, :cond_19

    .line 56
    invoke-virtual {v1}, Lcom/ta/utdid2/b/a/d$a;->e()Z

    move-result v2

    if-nez v2, :cond_19

    .line 57
    monitor-exit v0

    return-object v1

    .line 59
    :cond_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_a2

    .line 62
    invoke-static {p1}, Lcom/ta/utdid2/b/a/d;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 64
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 65
    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 69
    :cond_2a
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7f

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 71
    :try_start_37
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_37 .. :try_end_3c} :catch_50
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3c} :catch_4c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_4a

    .line 72
    :try_start_3c
    invoke-static {v0}, Lcom/ta/utdid2/b/a/e;->a(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v2

    .line 73
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_43
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3c .. :try_end_43} :catch_51
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_43} :catch_4d
    .catchall {:try_start_3c .. :try_end_43} :catchall_47

    .line 95
    :goto_43
    :try_start_43
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_46} :catch_7f

    goto :goto_7f

    :catchall_47
    move-exception p1

    move-object v2, v0

    goto :goto_74

    :catchall_4a
    move-exception p1

    goto :goto_74

    :catch_4c
    move-object v0, v2

    :catch_4d
    if-eqz v0, :cond_7f

    goto :goto_43

    :catch_50
    move-object v0, v2

    .line 76
    :catch_51
    :try_start_51
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_56} :catch_6b
    .catchall {:try_start_51 .. :try_end_56} :catchall_63

    .line 77
    :try_start_56
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    .line 78
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5f} :catch_6c
    .catchall {:try_start_56 .. :try_end_5f} :catchall_60

    goto :goto_6e

    :catchall_60
    move-exception p1

    move-object v2, v3

    goto :goto_65

    :catchall_63
    move-exception p1

    move-object v2, v0

    :goto_65
    if-eqz v2, :cond_6a

    .line 84
    :try_start_67
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_6a} :catch_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_4a

    .line 87
    :catch_6a
    :cond_6a
    :try_start_6a
    throw p1
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_4a

    :catch_6b
    move-object v3, v0

    :catch_6c
    if-eqz v3, :cond_7a

    .line 84
    :goto_6e
    :try_start_6e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_71} :catch_7a
    .catchall {:try_start_6e .. :try_end_71} :catchall_72

    goto :goto_7a

    :catchall_72
    move-exception p1

    move-object v2, v3

    :goto_74
    if-eqz v2, :cond_79

    .line 95
    :try_start_76
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_79} :catch_79

    .line 98
    :catch_79
    :cond_79
    throw p1

    :catch_7a
    :cond_7a
    :goto_7a
    if-eqz v3, :cond_7f

    .line 95
    :try_start_7c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_7f} :catch_7f

    .line 103
    :catch_7f
    :cond_7f
    :goto_7f
    sget-object v3, Lcom/ta/utdid2/b/a/d;->b:Ljava/lang/Object;

    monitor-enter v3

    if-eqz v1, :cond_88

    .line 105
    :try_start_84
    invoke-virtual {v1, v2}, Lcom/ta/utdid2/b/a/d$a;->a(Ljava/util/Map;)V

    goto :goto_9d

    .line 107
    :cond_88
    iget-object v0, p0, Lcom/ta/utdid2/b/a/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ta/utdid2/b/a/d$a;

    if-nez v1, :cond_9d

    .line 109
    new-instance v1, Lcom/ta/utdid2/b/a/d$a;

    invoke-direct {v1, p1, p2, v2}, Lcom/ta/utdid2/b/a/d$a;-><init>(Ljava/io/File;ILjava/util/Map;)V

    .line 110
    iget-object p2, p0, Lcom/ta/utdid2/b/a/d;->a:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_9d
    :goto_9d
    monitor-exit v3

    return-object v1

    :catchall_9f
    move-exception p1

    .line 114
    monitor-exit v3
    :try_end_a1
    .catchall {:try_start_84 .. :try_end_a1} :catchall_9f

    throw p1

    :catchall_a2
    move-exception p1

    .line 59
    :try_start_a3
    monitor-exit v0
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a2

    throw p1
.end method
