.class public final Lanet/channel/entity/c;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static a:I = 0x1

.field public static b:I = 0x2

.field public static c:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 10
    sget v0, Lanet/channel/entity/c;->a:I

    sget v1, Lanet/channel/entity/c;->b:I

    or-int/2addr v0, v1

    sput v0, Lanet/channel/entity/c;->c:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
