.class public final Lcom/pilotlab/rollereye/tensorflow/env/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static final DEFAULT_MIN_LOG_LEVEL:I = 0x3

.field private static final DEFAULT_TAG:Ljava/lang/String; = "tensorflow"

.field private static final IGNORED_CLASS_NAMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final messagePrefix:Ljava/lang/String;

.field private minLogLevel:I

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 32
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->IGNORED_CLASS_NAMES:Ljava/util/Set;

    .line 33
    sget-object v0, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->IGNORED_CLASS_NAMES:Ljava/util/Set;

    const-string v1, "dalvik.system.VMStack"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->IGNORED_CLASS_NAMES:Ljava/util/Set;

    const-string v1, "java.lang.Thread"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->IGNORED_CLASS_NAMES:Ljava/util/Set;

    const-class v1, Lcom/pilotlab/rollereye/tensorflow/env/Logger;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const-string v0, "tensorflow"

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0, v0, v1}, Lcom/pilotlab/rollereye/tensorflow/env/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    const-string v0, "tensorflow"

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0, v0, v1}, Lcom/pilotlab/rollereye/tensorflow/env/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iput p1, p0, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->minLogLevel:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 48
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/tensorflow/env/Logger;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "tensorflow"

    .line 57
    invoke-direct {p0, v0, p1}, Lcom/pilotlab/rollereye/tensorflow/env/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 40
    iput v0, p0, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->minLogLevel:I

    .line 72
    iput-object p1, p0, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->tag:Ljava/lang/String;

    if-nez p2, :cond_e

    .line 73
    invoke-static {}, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->getCallerSimpleName()Ljava/lang/String;

    move-result-object p2

    .line 74
    :cond_e
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_25

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_25
    iput-object p2, p0, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->messagePrefix:Ljava/lang/String;

    return-void
.end method

.method private static getCallerSimpleName()Ljava/lang/String;
    .registers 5

    .line 102
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 104
    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_29

    aget-object v3, v0, v2

    .line 105
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 106
    sget-object v4, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->IGNORED_CLASS_NAMES:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    const-string v0, "\\."

    .line 108
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 109
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 113
    :cond_29
    const-class v0, Lcom/pilotlab/rollereye/tensorflow/env/Logger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private varargs toMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->messagePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p2

    if-lez v1, :cond_11

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x3

    .line 141
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 142
    iget-object v0, p0, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->tag:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->toMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return-void
.end method

.method public varargs d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x3

    .line 147
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 148
    iget-object v0, p0, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->tag:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->toMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    return-void
.end method

.method public varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x6

    .line 177
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 178
    iget-object v0, p0, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->tag:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->toMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return-void
.end method

.method public varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x6

    .line 183
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 184
    iget-object v0, p0, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->tag:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->toMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    return-void
.end method

.method public varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x4

    .line 153
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 154
    iget-object v0, p0, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->tag:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->toMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return-void
.end method

.method public varargs i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x4

    .line 159
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 160
    iget-object v0, p0, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->tag:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->toMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    return-void
.end method

.method public isLoggable(I)Z
    .registers 3

    .line 121
    iget v0, p0, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->minLogLevel:I

    if-ge p1, v0, :cond_f

    iget-object v0, p0, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method public setMinLogLevel(I)V
    .registers 2

    .line 117
    iput p1, p0, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->minLogLevel:I

    return-void
.end method

.method public varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x2

    .line 129
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 130
    iget-object v0, p0, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->tag:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->toMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return-void
.end method

.method public varargs v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x2

    .line 135
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 136
    iget-object v0, p0, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->tag:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->toMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    return-void
.end method

.method public varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x5

    .line 165
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 166
    iget-object v0, p0, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->tag:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->toMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return-void
.end method

.method public varargs w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x5

    .line 171
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 172
    iget-object v0, p0, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->tag:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->toMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    return-void
.end method
