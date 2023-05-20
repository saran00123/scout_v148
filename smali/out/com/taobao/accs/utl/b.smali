.class synthetic Lcom/taobao/accs/utl/b;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 93
    invoke-static {}, Lcom/taobao/accs/utl/ALog$Level;->values()[Lcom/taobao/accs/utl/ALog$Level;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/taobao/accs/utl/b;->b:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/taobao/accs/utl/b;->b:[I

    sget-object v2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-virtual {v2}, Lcom/taobao/accs/utl/ALog$Level;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_14

    :catch_14
    const/4 v1, 0x2

    :try_start_15
    sget-object v2, Lcom/taobao/accs/utl/b;->b:[I

    sget-object v3, Lcom/taobao/accs/utl/ALog$Level;->V:Lcom/taobao/accs/utl/ALog$Level;

    invoke-virtual {v3}, Lcom/taobao/accs/utl/ALog$Level;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_1f

    :catch_1f
    const/4 v2, 0x3

    :try_start_20
    sget-object v3, Lcom/taobao/accs/utl/b;->b:[I

    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-virtual {v4}, Lcom/taobao/accs/utl/ALog$Level;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_2a} :catch_2a

    :catch_2a
    const/4 v3, 0x4

    :try_start_2b
    sget-object v4, Lcom/taobao/accs/utl/b;->b:[I

    sget-object v5, Lcom/taobao/accs/utl/ALog$Level;->W:Lcom/taobao/accs/utl/ALog$Level;

    invoke-virtual {v5}, Lcom/taobao/accs/utl/ALog$Level;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_35} :catch_35

    :catch_35
    :try_start_35
    sget-object v4, Lcom/taobao/accs/utl/b;->b:[I

    sget-object v5, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-virtual {v5}, Lcom/taobao/accs/utl/ALog$Level;->ordinal()I

    move-result v5

    const/4 v6, 0x5

    aput v6, v4, v5
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_40

    :catch_40
    :try_start_40
    sget-object v4, Lcom/taobao/accs/utl/b;->b:[I

    sget-object v5, Lcom/taobao/accs/utl/ALog$Level;->L:Lcom/taobao/accs/utl/ALog$Level;

    invoke-virtual {v5}, Lcom/taobao/accs/utl/ALog$Level;->ordinal()I

    move-result v5

    const/4 v6, 0x6

    aput v6, v4, v5
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_4b

    .line 25
    :catch_4b
    invoke-static {}, Lcom/alibaba/sdk/android/logger/LogLevel;->values()[Lcom/alibaba/sdk/android/logger/LogLevel;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/taobao/accs/utl/b;->a:[I

    :try_start_54
    sget-object v4, Lcom/taobao/accs/utl/b;->a:[I

    sget-object v5, Lcom/alibaba/sdk/android/logger/LogLevel;->DEBUG:Lcom/alibaba/sdk/android/logger/LogLevel;

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/logger/LogLevel;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_5e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5e} :catch_5e

    :catch_5e
    :try_start_5e
    sget-object v0, Lcom/taobao/accs/utl/b;->a:[I

    sget-object v4, Lcom/alibaba/sdk/android/logger/LogLevel;->INFO:Lcom/alibaba/sdk/android/logger/LogLevel;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/logger/LogLevel;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_68
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5e .. :try_end_68} :catch_68

    :catch_68
    :try_start_68
    sget-object v0, Lcom/taobao/accs/utl/b;->a:[I

    sget-object v1, Lcom/alibaba/sdk/android/logger/LogLevel;->WARN:Lcom/alibaba/sdk/android/logger/LogLevel;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/logger/LogLevel;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_72
    .catch Ljava/lang/NoSuchFieldError; {:try_start_68 .. :try_end_72} :catch_72

    :catch_72
    :try_start_72
    sget-object v0, Lcom/taobao/accs/utl/b;->a:[I

    sget-object v1, Lcom/alibaba/sdk/android/logger/LogLevel;->ERROR:Lcom/alibaba/sdk/android/logger/LogLevel;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/logger/LogLevel;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_7c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_72 .. :try_end_7c} :catch_7c

    :catch_7c
    return-void
.end method
