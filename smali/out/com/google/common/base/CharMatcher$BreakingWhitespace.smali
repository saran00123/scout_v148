.class final Lcom/google/common/base/CharMatcher$BreakingWhitespace;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BreakingWhitespace"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/common/base/CharMatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1242
    new-instance v0, Lcom/google/common/base/CharMatcher$BreakingWhitespace;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$BreakingWhitespace;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher$BreakingWhitespace;->INSTANCE:Lcom/google/common/base/CharMatcher;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1240
    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1240
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public matches(C)Z
    .registers 5

    const/16 v0, 0x20

    const/4 v1, 0x1

    if-eq p1, v0, :cond_31

    const/16 v0, 0x85

    if-eq p1, v0, :cond_31

    const/16 v0, 0x1680

    if-eq p1, v0, :cond_31

    const/16 v0, 0x2007

    const/4 v2, 0x0

    if-eq p1, v0, :cond_30

    const/16 v0, 0x205f

    if-eq p1, v0, :cond_31

    const/16 v0, 0x3000

    if-eq p1, v0, :cond_31

    const/16 v0, 0x2028

    if-eq p1, v0, :cond_31

    const/16 v0, 0x2029

    if-eq p1, v0, :cond_31

    packed-switch p1, :pswitch_data_32

    const/16 v0, 0x2000

    if-lt p1, v0, :cond_2e

    const/16 v0, 0x200a

    if-gt p1, v0, :cond_2e

    goto :goto_2f

    :cond_2e
    move v1, v2

    :goto_2f
    return v1

    :cond_30
    return v2

    :cond_31
    :pswitch_31
    return v1

    :pswitch_data_32
    .packed-switch 0x9
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "CharMatcher.breakingWhitespace()"

    return-object v0
.end method
