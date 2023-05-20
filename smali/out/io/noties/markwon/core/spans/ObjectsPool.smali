.class abstract Lio/noties/markwon/core/spans/ObjectsPool;
.super Ljava/lang/Object;
.source "ObjectsPool.java"


# static fields
.field private static final PAINT:Landroid/graphics/Paint;

.field private static final RECT:Landroid/graphics/Rect;

.field private static final RECT_F:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 15
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lio/noties/markwon/core/spans/ObjectsPool;->RECT:Landroid/graphics/Rect;

    .line 16
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lio/noties/markwon/core/spans/ObjectsPool;->RECT_F:Landroid/graphics/RectF;

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lio/noties/markwon/core/spans/ObjectsPool;->PAINT:Landroid/graphics/Paint;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static paint()Landroid/graphics/Paint;
    .registers 1

    .line 28
    sget-object v0, Lio/noties/markwon/core/spans/ObjectsPool;->PAINT:Landroid/graphics/Paint;

    return-object v0
.end method

.method static rect()Landroid/graphics/Rect;
    .registers 1

    .line 20
    sget-object v0, Lio/noties/markwon/core/spans/ObjectsPool;->RECT:Landroid/graphics/Rect;

    return-object v0
.end method

.method static rectF()Landroid/graphics/RectF;
    .registers 1

    .line 24
    sget-object v0, Lio/noties/markwon/core/spans/ObjectsPool;->RECT_F:Landroid/graphics/RectF;

    return-object v0
.end method
