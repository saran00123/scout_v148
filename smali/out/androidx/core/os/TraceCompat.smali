.class public final Landroidx/core/os/TraceCompat;
.super Ljava/lang/Object;
.source "TraceCompat.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TraceCompat"

.field private static sAsyncTraceBeginMethod:Ljava/lang/reflect/Method;

.field private static sAsyncTraceEndMethod:Ljava/lang/reflect/Method;

.field private static sIsTagEnabledMethod:Ljava/lang/reflect/Method;

.field private static sTraceCounterMethod:Ljava/lang/reflect/Method;

.field private static sTraceTagApp:J


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_81

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_81

    .line 52
    :try_start_c
    const-class v0, Landroid/os/Trace;

    const-string v1, "TRACE_TAG_APP"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v0

    sput-wide v0, Landroidx/core/os/TraceCompat;->sTraceTagApp:J

    .line 55
    const-class v0, Landroid/os/Trace;

    const-string v1, "isTagEnabled"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/os/TraceCompat;->sIsTagEnabledMethod:Ljava/lang/reflect/Method;

    .line 56
    const-class v0, Landroid/os/Trace;

    const-string v1, "asyncTraceBegin"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v6, v4, v7

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/os/TraceCompat;->sAsyncTraceBeginMethod:Ljava/lang/reflect/Method;

    .line 58
    const-class v0, Landroid/os/Trace;

    const-string v1, "asyncTraceEnd"

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v7

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/os/TraceCompat;->sAsyncTraceEndMethod:Ljava/lang/reflect/Method;

    .line 60
    const-class v0, Landroid/os/Trace;

    const-string/jumbo v1, "traceCounter"

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/os/TraceCompat;->sTraceCounterMethod:Ljava/lang/reflect/Method;
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_78} :catch_79

    goto :goto_81

    :catch_79
    move-exception v0

    const-string v1, "TraceCompat"

    const-string v2, "Unable to initialize via reflection."

    .line 63
    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_81
    :goto_81
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginAsyncSection(Ljava/lang/String;I)V
    .registers 8
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 133
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_a

    .line 134
    invoke-static {p0, p1}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    goto :goto_34

    .line 135
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_34

    .line 137
    :try_start_10
    sget-object v0, Landroidx/core/os/TraceCompat;->sAsyncTraceBeginMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-wide v4, Landroidx/core/os/TraceCompat;->sTraceTagApp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 p0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2c} :catch_2d

    goto :goto_34

    :catch_2d
    const-string p0, "TraceCompat"

    const-string p1, "Unable to invoke asyncTraceBegin() via reflection."

    .line 139
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    :goto_34
    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .registers 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 104
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_9

    .line 105
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public static endAsyncSection(Ljava/lang/String;I)V
    .registers 8
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_a

    .line 154
    invoke-static {p0, p1}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    goto :goto_34

    .line 155
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_34

    .line 157
    :try_start_10
    sget-object v0, Landroidx/core/os/TraceCompat;->sAsyncTraceEndMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-wide v4, Landroidx/core/os/TraceCompat;->sTraceTagApp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 p0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2c} :catch_2d

    goto :goto_34

    :catch_2d
    const-string p0, "TraceCompat"

    const-string p1, "Unable to invoke endAsyncSection() via reflection."

    .line 159
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    :goto_34
    return-void
.end method

.method public static endSection()V
    .registers 2

    .line 117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_9

    .line 118
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_9
    return-void
.end method

.method public static isEnabled()Z
    .registers 6

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_b

    .line 79
    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v0

    return v0

    .line 80
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    const/4 v2, 0x0

    if-lt v0, v1, :cond_32

    .line 82
    :try_start_12
    sget-object v0, Landroidx/core/os/TraceCompat;->sIsTagEnabledMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    sget-wide v4, Landroidx/core/os/TraceCompat;->sTraceTagApp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2a} :catch_2b

    return v0

    :catch_2b
    const-string v0, "TraceCompat"

    const-string v1, "Unable to invoke isTagEnabled() via reflection."

    .line 84
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    return v2
.end method

.method public static setCounter(Ljava/lang/String;I)V
    .registers 8
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 172
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_b

    int-to-long v0, p1

    .line 173
    invoke-static {p0, v0, v1}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    goto :goto_35

    .line 174
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_35

    .line 176
    :try_start_11
    sget-object v0, Landroidx/core/os/TraceCompat;->sTraceCounterMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-wide v4, Landroidx/core/os/TraceCompat;->sTraceTagApp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 p0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2d} :catch_2e

    goto :goto_35

    :catch_2e
    const-string p0, "TraceCompat"

    const-string p1, "Unable to invoke traceCounter() via reflection."

    .line 178
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    :goto_35
    return-void
.end method
