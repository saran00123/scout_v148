.class public Lanet/channel/util/ALog;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/util/ALog$Logcat;,
        Lanet/channel/util/ALog$Level;,
        Lanet/channel/util/ALog$ILog;
    }
.end annotation


# static fields
.field private static LOG_BREAK:Ljava/lang/Object;

.field private static canUseTlog:Z

.field private static isPrintLog:Z

.field private static volatile log:Lanet/channel/util/ALog$ILog;

.field public static logcat:Lanet/channel/util/ALog$Logcat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 83
    new-instance v0, Lanet/channel/util/ALog$Logcat;

    invoke-direct {v0}, Lanet/channel/util/ALog$Logcat;-><init>()V

    sput-object v0, Lanet/channel/util/ALog;->logcat:Lanet/channel/util/ALog$Logcat;

    .line 84
    sget-object v0, Lanet/channel/util/ALog;->logcat:Lanet/channel/util/ALog$Logcat;

    sput-object v0, Lanet/channel/util/ALog;->log:Lanet/channel/util/ALog$ILog;

    const-string/jumbo v0, "|"

    .line 86
    sput-object v0, Lanet/channel/util/ALog;->LOG_BREAK:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 87
    sput-boolean v0, Lanet/channel/util/ALog;->isPrintLog:Z

    .line 89
    sput-boolean v0, Lanet/channel/util/ALog;->canUseTlog:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs buildLogMsg(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 7

    const-string v0, ""

    if-nez p0, :cond_9

    if-nez p1, :cond_9

    if-nez p2, :cond_9

    return-object v0

    .line 199
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 200
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 201
    sget-object v2, Lanet/channel/util/ALog;->LOG_BREAK:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "[seq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_28
    const-string p1, " "

    if-eqz p0, :cond_32

    .line 205
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_32
    if-eqz p2, :cond_66

    const/4 p0, 0x0

    :goto_35
    add-int/lit8 v2, p0, 0x1

    .line 210
    array-length v3, p2

    if-ge v2, v3, :cond_5b

    .line 211
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p2, p0

    if-eqz v3, :cond_44

    aget-object v3, p2, p0

    goto :goto_45

    :cond_44
    move-object v3, v0

    .line 212
    :goto_45
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    .line 213
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p2, v2

    if-eqz v3, :cond_54

    aget-object v2, p2, v2

    goto :goto_55

    :cond_54
    move-object v2, v0

    .line 214
    :goto_55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x2

    goto :goto_35

    .line 216
    :cond_5b
    array-length v0, p2

    if-ge p0, v0, :cond_66

    .line 217
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    aget-object p0, p2, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    :cond_66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static buildLogTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    return-object p0
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x1

    .line 138
    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 139
    sget-object v0, Lanet/channel/util/ALog;->log:Lanet/channel/util/ALog$ILog;

    if-eqz v0, :cond_18

    .line 140
    sget-object v0, Lanet/channel/util/ALog;->log:Lanet/channel/util/ALog$ILog;

    invoke-static {p0}, Lanet/channel/util/ALog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p3}, Lanet/channel/util/ALog;->buildLogMsg(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lanet/channel/util/ALog$ILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .registers 6

    const/4 v0, 0x4

    .line 183
    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 184
    sget-object v0, Lanet/channel/util/ALog;->log:Lanet/channel/util/ALog$ILog;

    if-eqz v0, :cond_18

    .line 185
    sget-object v0, Lanet/channel/util/ALog;->log:Lanet/channel/util/ALog$ILog;

    invoke-static {p0}, Lanet/channel/util/ALog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p4}, Lanet/channel/util/ALog;->buildLogMsg(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1, p3}, Lanet/channel/util/ALog$ILog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_18
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x4

    .line 175
    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 176
    sget-object v0, Lanet/channel/util/ALog;->log:Lanet/channel/util/ALog$ILog;

    if-eqz v0, :cond_18

    .line 177
    sget-object v0, Lanet/channel/util/ALog;->log:Lanet/channel/util/ALog$ILog;

    invoke-static {p0}, Lanet/channel/util/ALog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p3}, Lanet/channel/util/ALog;->buildLogMsg(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lanet/channel/util/ALog$ILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    return-void
.end method

.method public static getLog()Lanet/channel/util/ALog$ILog;
    .registers 1

    .line 109
    sget-object v0, Lanet/channel/util/ALog;->log:Lanet/channel/util/ALog$ILog;

    return-object v0
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x2

    .line 151
    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 152
    sget-object v0, Lanet/channel/util/ALog;->log:Lanet/channel/util/ALog$ILog;

    if-eqz v0, :cond_18

    .line 153
    sget-object v0, Lanet/channel/util/ALog;->log:Lanet/channel/util/ALog$ILog;

    invoke-static {p0}, Lanet/channel/util/ALog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p3}, Lanet/channel/util/ALog;->buildLogMsg(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lanet/channel/util/ALog$ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    return-void
.end method

.method public static isPrintLog(I)Z
    .registers 3

    .line 123
    sget-boolean v0, Lanet/channel/util/ALog;->isPrintLog:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 127
    :cond_6
    sget-object v0, Lanet/channel/util/ALog;->log:Lanet/channel/util/ALog$ILog;

    if-eqz v0, :cond_11

    .line 128
    sget-object v0, Lanet/channel/util/ALog;->log:Lanet/channel/util/ALog$ILog;

    invoke-interface {v0, p0}, Lanet/channel/util/ALog$ILog;->isPrintLog(I)Z

    move-result p0

    return p0

    :cond_11
    return v1
.end method

.method public static setLevel(I)V
    .registers 2

    .line 117
    sget-object v0, Lanet/channel/util/ALog;->log:Lanet/channel/util/ALog$ILog;

    if-eqz v0, :cond_9

    .line 118
    sget-object v0, Lanet/channel/util/ALog;->log:Lanet/channel/util/ALog$ILog;

    invoke-interface {v0, p0}, Lanet/channel/util/ALog$ILog;->setLogLevel(I)V

    :cond_9
    return-void
.end method

.method public static setLog(Lanet/channel/util/ALog$ILog;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    .line 97
    :cond_3
    sget-boolean v0, Lanet/channel/util/ALog;->canUseTlog:Z

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tlog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    return-void

    .line 101
    :cond_1d
    invoke-interface {p0}, Lanet/channel/util/ALog$ILog;->isValid()Z

    move-result v0

    if-nez v0, :cond_24

    return-void

    .line 105
    :cond_24
    sput-object p0, Lanet/channel/util/ALog;->log:Lanet/channel/util/ALog$ILog;

    return-void
.end method

.method public static setPrintLog(Z)V
    .registers 1

    .line 113
    sput-boolean p0, Lanet/channel/util/ALog;->isPrintLog:Z

    return-void
.end method

.method public static setUseTlog(Z)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p0, :cond_a

    const/4 p0, 0x0

    .line 230
    sput-boolean p0, Lanet/channel/util/ALog;->canUseTlog:Z

    .line 231
    sget-object p0, Lanet/channel/util/ALog;->logcat:Lanet/channel/util/ALog$Logcat;

    sput-object p0, Lanet/channel/util/ALog;->log:Lanet/channel/util/ALog$ILog;

    goto :goto_d

    :cond_a
    const/4 p0, 0x1

    .line 233
    sput-boolean p0, Lanet/channel/util/ALog;->canUseTlog:Z

    :goto_d
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .registers 6

    const/4 v0, 0x3

    .line 167
    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 168
    sget-object v0, Lanet/channel/util/ALog;->log:Lanet/channel/util/ALog$ILog;

    if-eqz v0, :cond_18

    .line 169
    sget-object v0, Lanet/channel/util/ALog;->log:Lanet/channel/util/ALog$ILog;

    invoke-static {p0}, Lanet/channel/util/ALog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p4}, Lanet/channel/util/ALog;->buildLogMsg(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1, p3}, Lanet/channel/util/ALog$ILog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_18
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x3

    .line 159
    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 160
    sget-object v0, Lanet/channel/util/ALog;->log:Lanet/channel/util/ALog$ILog;

    if-eqz v0, :cond_18

    .line 161
    sget-object v0, Lanet/channel/util/ALog;->log:Lanet/channel/util/ALog$ILog;

    invoke-static {p0}, Lanet/channel/util/ALog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p3}, Lanet/channel/util/ALog;->buildLogMsg(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lanet/channel/util/ALog$ILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    return-void
.end method
