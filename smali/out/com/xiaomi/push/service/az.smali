.class synthetic Lcom/xiaomi/push/service/az;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    invoke-static {}, Lcom/xiaomi/push/ic;->values()[Lcom/xiaomi/push/ic;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/xiaomi/push/service/az;->b:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/xiaomi/push/service/az;->b:[I

    sget-object v2, Lcom/xiaomi/push/ic;->a:Lcom/xiaomi/push/ic;

    invoke-virtual {v2}, Lcom/xiaomi/push/ic;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_14

    :catch_14
    const/4 v1, 0x2

    :try_start_15
    sget-object v2, Lcom/xiaomi/push/service/az;->b:[I

    sget-object v3, Lcom/xiaomi/push/ic;->b:Lcom/xiaomi/push/ic;

    invoke-virtual {v3}, Lcom/xiaomi/push/ic;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v2, Lcom/xiaomi/push/service/az;->b:[I

    sget-object v3, Lcom/xiaomi/push/ic;->c:Lcom/xiaomi/push/ic;

    invoke-virtual {v3}, Lcom/xiaomi/push/ic;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2a
    sget-object v2, Lcom/xiaomi/push/service/az;->b:[I

    sget-object v3, Lcom/xiaomi/push/ic;->d:Lcom/xiaomi/push/ic;

    invoke-virtual {v3}, Lcom/xiaomi/push/ic;->ordinal()I

    move-result v3

    const/4 v4, 0x4

    aput v4, v2, v3
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_35

    :catch_35
    invoke-static {}, Lcom/xiaomi/push/ib;->values()[Lcom/xiaomi/push/ib;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/xiaomi/push/service/az;->a:[I

    :try_start_3e
    sget-object v2, Lcom/xiaomi/push/service/az;->a:[I

    sget-object v3, Lcom/xiaomi/push/ib;->a:Lcom/xiaomi/push/ib;

    invoke-virtual {v3}, Lcom/xiaomi/push/ib;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_48} :catch_48

    :catch_48
    :try_start_48
    sget-object v0, Lcom/xiaomi/push/service/az;->a:[I

    sget-object v2, Lcom/xiaomi/push/ib;->b:Lcom/xiaomi/push/ib;

    invoke-virtual {v2}, Lcom/xiaomi/push/ib;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_52} :catch_52

    :catch_52
    return-void
.end method
