.class synthetic Landroidx/constraintlayout/solver/state/State$1;
.super Ljava/lang/Object;
.source "State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/state/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$androidx$constraintlayout$solver$state$State$Helper:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 177
    invoke-static {}, Landroidx/constraintlayout/solver/state/State$Helper;->values()[Landroidx/constraintlayout/solver/state/State$Helper;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroidx/constraintlayout/solver/state/State$1;->$SwitchMap$androidx$constraintlayout$solver$state$State$Helper:[I

    :try_start_9
    sget-object v0, Landroidx/constraintlayout/solver/state/State$1;->$SwitchMap$androidx$constraintlayout$solver$state$State$Helper:[I

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Helper;->HORIZONTAL_CHAIN:Landroidx/constraintlayout/solver/state/State$Helper;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/state/State$Helper;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Landroidx/constraintlayout/solver/state/State$1;->$SwitchMap$androidx$constraintlayout$solver$state$State$Helper:[I

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Helper;->VERTICAL_CHAIN:Landroidx/constraintlayout/solver/state/State$Helper;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/state/State$Helper;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Landroidx/constraintlayout/solver/state/State$1;->$SwitchMap$androidx$constraintlayout$solver$state$State$Helper:[I

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Helper;->ALIGN_HORIZONTALLY:Landroidx/constraintlayout/solver/state/State$Helper;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/state/State$Helper;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2a
    sget-object v0, Landroidx/constraintlayout/solver/state/State$1;->$SwitchMap$androidx$constraintlayout$solver$state$State$Helper:[I

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Helper;->ALIGN_VERTICALLY:Landroidx/constraintlayout/solver/state/State$Helper;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/state/State$Helper;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_35

    :catch_35
    :try_start_35
    sget-object v0, Landroidx/constraintlayout/solver/state/State$1;->$SwitchMap$androidx$constraintlayout$solver$state$State$Helper:[I

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Helper;->BARRIER:Landroidx/constraintlayout/solver/state/State$Helper;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/state/State$Helper;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_40

    :catch_40
    return-void
.end method
