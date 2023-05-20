.class public final Lcom/amazon/identity/auth/map/device/utils/MAPLog;
.super Ljava/lang/Object;
.source "MAPLog.java"


# static fields
.field private static final ENG:Ljava/lang/String; = "eng"

.field private static final FLAVOR_INDEX:I = 0x2

.field public static IS_FIRST_PARTY_DEBUG_BUILD:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.map.device.utils.MAPLog"

.field private static final LOG_TAG_PII:Ljava/lang/String; = "com.amazon.identity.pii"

.field private static final MATCHER_PATTERN:Ljava/lang/String; = "^(?:(.*?)_)??(?:([^_]*)_)?([0-9]+)$"

.field private static final NO_MESSAGE:Ljava/lang/String; = "N/A"

.field private static final NUM_GROUPS:I = 0x3

.field private static final OBSCURED:Ljava/lang/String; = "<obscured>"

.field private static final PII_STRING:Ljava/lang/String; = ".PII"

.field private static final SEPARATOR:Ljava/lang/String; = ":"

.field private static final USERDEBUG:Ljava/lang/String; = "userdebug"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    invoke-static {}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->isFirstPartyDebugBuild()Z

    move-result v0

    sput-boolean v0, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->IS_FIRST_PARTY_DEBUG_BUILD:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .registers 2

    .line 173
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3

    .line 178
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .registers 2

    .line 183
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3

    .line 188
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 1

    .line 228
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getUpdatedMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 158
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_13

    const-string p0, ":"

    .line 161
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    :cond_13
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .registers 2

    .line 193
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3

    .line 198
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method private static isFirstPartyDebugBuild()Z
    .registers 7

    const/4 v0, 0x0

    .line 273
    :try_start_1
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 274
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 276
    sget-object v1, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Incremental version was empty"

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_11
    const-string v2, "^(?:(.*?)_)??(?:([^_]*)_)?([0-9]+)$"

    .line 281
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 282
    sget-object v3, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Extracting verison incremental"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Build.VERSION.INCREMENTAL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 284
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_53

    .line 286
    sget-object v2, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Incremental version \'%s\' was in invalid format."

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ver="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 291
    :cond_53
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    const/4 v3, 0x3

    if-ge v1, v3, :cond_62

    .line 293
    sget-object v1, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error parsing build version string."

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_62
    const/4 v1, 0x2

    .line 298
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 299
    sget-object v2, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Extracting flavor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Build flavor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a9

    const-string/jumbo v2, "userdebug"

    .line 304
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_96

    const-string v2, "eng"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 306
    :cond_96
    sget-object v1, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->LOG_TAG:Ljava/lang/String;

    const-string v2, "MAP is running on 1st party debug"

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9d} :catch_9f

    const/4 v0, 0x1

    return v0

    :catch_9f
    move-exception v1

    .line 313
    sget-object v2, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a9
    return v0
.end method

.method public static isLoggable(Ljava/lang/String;I)Z
    .registers 2

    .line 233
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private static logPii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)I
    .registers 6

    const/4 v0, 0x4

    if-eqz p3, :cond_17

    if-ne p4, v0, :cond_e

    .line 130
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->getUpdatedMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    .line 132
    :cond_e
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->getUpdatedMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_17
    if-ne p4, v0, :cond_22

    .line 138
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->getUpdatedMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 140
    :cond_22
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->getUpdatedMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    .line 60
    invoke-static {p0, p1, p2, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 7

    if-nez p0, :cond_4

    const-string p0, "NULL_TAG"

    .line 78
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".PII"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 82
    sget-boolean v0, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->IS_FIRST_PARTY_DEBUG_BUILD:Z

    const/4 v1, 0x4

    const/4 v2, 0x3

    if-eqz v0, :cond_1d

    move v2, v1

    goto :goto_3d

    .line 87
    :cond_1d
    invoke-static {}, Lcom/amazon/identity/auth/device/env/LWAEnvironment;->isProd()Z

    move-result v0

    if-eqz v0, :cond_30

    const-string v0, "com.amazon.identity.pii"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 89
    invoke-static {p0, p1, p2, p3, v2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->logPii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)I

    move-result p0

    return p0

    .line 91
    :cond_30
    invoke-static {}, Lcom/amazon/identity/auth/device/env/LWAEnvironment;->isProd()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 93
    invoke-static {p0, p1, p2, p3, v2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->logPii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)I

    move-result p0

    return p0

    :cond_3b
    const-string p2, "<obscured>"

    :goto_3d
    if-eqz p3, :cond_53

    if-ne v2, v1, :cond_4a

    .line 100
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->getUpdatedMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    .line 102
    :cond_4a
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->getUpdatedMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_53
    if-ne v2, v1, :cond_5e

    .line 108
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->getUpdatedMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 110
    :cond_5e
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->getUpdatedMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static println(ILjava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 238
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .registers 2

    .line 203
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3

    .line 208
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .registers 2

    .line 213
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3

    .line 223
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3

    const-string v0, "N/A"

    .line 218
    invoke-static {p0, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;)I
    .registers 2

    .line 248
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3

    .line 253
    invoke-static {p0, p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 2

    .line 243
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method
