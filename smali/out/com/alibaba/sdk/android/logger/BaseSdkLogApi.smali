.class public Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/logger/BaseSdkLogApi$b;,
        Lcom/alibaba/sdk/android/logger/BaseSdkLogApi$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/alibaba/sdk/android/logger/LogLevel;

.field private static final b:Lcom/alibaba/sdk/android/logger/ILogger;


# instance fields
.field private c:Z

.field private d:Lcom/alibaba/sdk/android/logger/LogLevel;

.field private e:Lcom/alibaba/sdk/android/logger/ILogger;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/sdk/android/logger/ILogger;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/alibaba/sdk/android/logger/BaseSdkLogApi$a;

.field private h:Ljava/lang/String;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Lcom/alibaba/sdk/android/logger/LogLevel;->WARN:Lcom/alibaba/sdk/android/logger/LogLevel;

    sput-object v0, Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;->a:Lcom/alibaba/sdk/android/logger/LogLevel;

    new-instance v0, Lcom/alibaba/sdk/android/logger/BaseSdkLogApi$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/sdk/android/logger/BaseSdkLogApi$b;-><init>(Lcom/alibaba/sdk/android/logger/BaseSdkLogApi$1;)V

    sput-object v0, Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;->b:Lcom/alibaba/sdk/android/logger/ILogger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;->c:Z

    sget-object v0, Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;->a:Lcom/alibaba/sdk/android/logger/LogLevel;

    iput-object v0, p0, Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;->d:Lcom/alibaba/sdk/android/logger/LogLevel;

    sget-object v0, Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;->b:Lcom/alibaba/sdk/android/logger/ILogger;

    iput-object v0, p0, Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;->e:Lcom/alibaba/sdk/android/logger/ILogger;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;->f:Ljava/util/ArrayList;

    new-instance v0, Lcom/alibaba/sdk/android/logger/BaseSdkLogApi$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/sdk/android/logger/BaseSdkLogApi$a;-><init>(Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;Lcom/alibaba/sdk/android/logger/BaseSdkLogApi$1;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;->g:Lcom/alibaba/sdk/android/logger/BaseSdkLogApi$a;

    iput-object p1, p0, Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;->h:Ljava/lang/String;

    if-nez p1, :cond_25

    const-string p1, "default"

    iput-object p1, p0, Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;->h:Ljava/lang/String;

    :cond_25
    iput-boolean p2, p0, Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;->i:Z

    if-eqz p2, :cond_2d

    sget-object p1, Lcom/alibaba/sdk/android/logger/LogLevel;->DEBUG:Lcom/alibaba/sdk/android/logger/LogLevel;

    iput-object p1, p0, Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;->d:Lcom/alibaba/sdk/android/logger/LogLevel;

    :cond_2d
    return-void
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;)Lcom/alibaba/sdk/android/logger/ILogger;
    .registers 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;->e:Lcom/alibaba/sdk/android/logger/ILogger;

    return-object p0
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_5

    const-string p1, ""

    goto :goto_37

    :cond_5
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_10

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_37

    :cond_10
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_17

    check-cast p1, Ljava/lang/String;

    goto :goto_37

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;Lcom/alibaba/sdk/android/logger/LogLevel;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;->a(Lcom/alibaba/sdk/android/logger/LogLevel;)Z

    move-result p0

    return p0
.end method

.method private a(Lcom/alibaba/sdk/android/logger/LogLevel;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;->c:Z

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/logger/LogLevel;->ordinal()I

    move-result p1

    iget-object v0, p0, Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;->d:Lcom/alibaba/sdk/android/logger/LogLevel;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/logger/LogLevel;->ordinal()I

    move-result v0

    if-lt p1, v0, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method static synthetic b(Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;->f:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public addILogger(Lcom/alibaba/sdk/android/logger/ILogger;)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public enable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;->c:Z

    return-void
.end method

.method public getLogger(Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;
    .registers 6

    new-instance v0, Lcom/alibaba/sdk/android/logger/c;

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/alibaba/sdk/android/logger/b;

    iget-object v2, p0, Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;->g:Lcom/alibaba/sdk/android/logger/BaseSdkLogApi$a;

    iget-boolean v3, p0, Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;->i:Z

    invoke-direct {v1, v2, v3}, Lcom/alibaba/sdk/android/logger/b;-><init>(Lcom/alibaba/sdk/android/logger/ILogger;Z)V

    invoke-direct {v0, p1, v1}, Lcom/alibaba/sdk/android/logger/c;-><init>(Ljava/lang/String;Lcom/alibaba/sdk/android/logger/ILogger;)V

    return-object v0
.end method

.method public removeILogger(Lcom/alibaba/sdk/android/logger/ILogger;)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public setILogger(Lcom/alibaba/sdk/android/logger/ILogger;)V
    .registers 2

    if-nez p1, :cond_4

    sget-object p1, Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;->b:Lcom/alibaba/sdk/android/logger/ILogger;

    :cond_4
    iput-object p1, p0, Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;->e:Lcom/alibaba/sdk/android/logger/ILogger;

    return-void
.end method

.method public setLevel(Lcom/alibaba/sdk/android/logger/LogLevel;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/logger/BaseSdkLogApi;->d:Lcom/alibaba/sdk/android/logger/LogLevel;

    return-void
.end method
