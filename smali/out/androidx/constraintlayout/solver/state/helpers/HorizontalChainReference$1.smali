.class synthetic Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference$1;
.super Ljava/lang/Object;
.source "HorizontalChainReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$androidx$constraintlayout$solver$state$State$Chain:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 75
    invoke-static {}, Landroidx/constraintlayout/solver/state/State$Chain;->values()[Landroidx/constraintlayout/solver/state/State$Chain;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference$1;->$SwitchMap$androidx$constraintlayout$solver$state$State$Chain:[I

    :try_start_9
    sget-object v0, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference$1;->$SwitchMap$androidx$constraintlayout$solver$state$State$Chain:[I

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Chain;->SPREAD:Landroidx/constraintlayout/solver/state/State$Chain;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/state/State$Chain;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference$1;->$SwitchMap$androidx$constraintlayout$solver$state$State$Chain:[I

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Chain;->SPREAD_INSIDE:Landroidx/constraintlayout/solver/state/State$Chain;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/state/State$Chain;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference$1;->$SwitchMap$androidx$constraintlayout$solver$state$State$Chain:[I

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Chain;->PACKED:Landroidx/constraintlayout/solver/state/State$Chain;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/state/State$Chain;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    return-void
.end method
