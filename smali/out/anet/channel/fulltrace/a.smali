.class public Lanet/channel/fulltrace/a;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/fulltrace/a$a;
    }
.end annotation


# static fields
.field private static volatile a:Lanet/channel/fulltrace/IFullTraceAnalysis;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 13
    new-instance v0, Lanet/channel/fulltrace/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lanet/channel/fulltrace/a$a;-><init>(Lanet/channel/fulltrace/IFullTraceAnalysis;)V

    sput-object v0, Lanet/channel/fulltrace/a;->a:Lanet/channel/fulltrace/IFullTraceAnalysis;

    const/4 v0, 0x0

    .line 14
    sput-boolean v0, Lanet/channel/fulltrace/a;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lanet/channel/fulltrace/IFullTraceAnalysis;
    .registers 1

    .line 17
    sget-object v0, Lanet/channel/fulltrace/a;->a:Lanet/channel/fulltrace/IFullTraceAnalysis;

    return-object v0
.end method

.method public static a(Lanet/channel/fulltrace/IFullTraceAnalysis;)V
    .registers 2

    .line 21
    new-instance v0, Lanet/channel/fulltrace/a$a;

    invoke-direct {v0, p0}, Lanet/channel/fulltrace/a$a;-><init>(Lanet/channel/fulltrace/IFullTraceAnalysis;)V

    sput-object v0, Lanet/channel/fulltrace/a;->a:Lanet/channel/fulltrace/IFullTraceAnalysis;

    return-void
.end method

.method static synthetic a(Z)Z
    .registers 1

    .line 11
    sput-boolean p0, Lanet/channel/fulltrace/a;->b:Z

    return p0
.end method

.method static synthetic b()Z
    .registers 1

    .line 11
    sget-boolean v0, Lanet/channel/fulltrace/a;->b:Z

    return v0
.end method
