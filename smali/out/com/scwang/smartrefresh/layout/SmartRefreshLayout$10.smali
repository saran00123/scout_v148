.class synthetic Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$10;
.super Ljava/lang/Object;
.source "SmartRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$scwang$smartrefresh$layout$constant$RefreshState:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 3362
    invoke-static {}, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->values()[Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$10;->$SwitchMap$com$scwang$smartrefresh$layout$constant$RefreshState:[I

    :try_start_9
    sget-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$10;->$SwitchMap$com$scwang$smartrefresh$layout$constant$RefreshState:[I

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {v1}, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$10;->$SwitchMap$com$scwang$smartrefresh$layout$constant$RefreshState:[I

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {v1}, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$10;->$SwitchMap$com$scwang$smartrefresh$layout$constant$RefreshState:[I

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {v1}, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2a
    sget-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$10;->$SwitchMap$com$scwang$smartrefresh$layout$constant$RefreshState:[I

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownCanceled:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {v1}, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_35

    :catch_35
    :try_start_35
    sget-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$10;->$SwitchMap$com$scwang$smartrefresh$layout$constant$RefreshState:[I

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpCanceled:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {v1}, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_40

    :catch_40
    :try_start_40
    sget-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$10;->$SwitchMap$com$scwang$smartrefresh$layout$constant$RefreshState:[I

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {v1}, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_4b

    :catch_4b
    :try_start_4b
    sget-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$10;->$SwitchMap$com$scwang$smartrefresh$layout$constant$RefreshState:[I

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {v1}, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_56

    :catch_56
    :try_start_56
    sget-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$10;->$SwitchMap$com$scwang$smartrefresh$layout$constant$RefreshState:[I

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToTwoLevel:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {v1}, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_62

    :catch_62
    :try_start_62
    sget-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$10;->$SwitchMap$com$scwang$smartrefresh$layout$constant$RefreshState:[I

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->RefreshReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {v1}, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_6e

    :catch_6e
    :try_start_6e
    sget-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$10;->$SwitchMap$com$scwang$smartrefresh$layout$constant$RefreshState:[I

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->LoadReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {v1}, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_7a

    :catch_7a
    :try_start_7a
    sget-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$10;->$SwitchMap$com$scwang$smartrefresh$layout$constant$RefreshState:[I

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {v1}, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_86} :catch_86

    :catch_86
    :try_start_86
    sget-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$10;->$SwitchMap$com$scwang$smartrefresh$layout$constant$RefreshState:[I

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {v1}, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_92} :catch_92

    :catch_92
    :try_start_92
    sget-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$10;->$SwitchMap$com$scwang$smartrefresh$layout$constant$RefreshState:[I

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->RefreshFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {v1}, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_9e} :catch_9e

    :catch_9e
    :try_start_9e
    sget-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$10;->$SwitchMap$com$scwang$smartrefresh$layout$constant$RefreshState:[I

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->LoadFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {v1}, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e .. :try_end_aa} :catch_aa

    :catch_aa
    :try_start_aa
    sget-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$10;->$SwitchMap$com$scwang$smartrefresh$layout$constant$RefreshState:[I

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevelReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {v1}, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b6} :catch_b6

    :catch_b6
    :try_start_b6
    sget-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$10;->$SwitchMap$com$scwang$smartrefresh$layout$constant$RefreshState:[I

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevelFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {v1}, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_c2} :catch_c2

    :catch_c2
    :try_start_c2
    sget-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$10;->$SwitchMap$com$scwang$smartrefresh$layout$constant$RefreshState:[I

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevel:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {v1}, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_ce
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c2 .. :try_end_ce} :catch_ce

    :catch_ce
    return-void
.end method
