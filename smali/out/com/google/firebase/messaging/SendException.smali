.class public final Lcom/google/firebase/messaging/SendException;
.super Ljava/lang/Exception;


# static fields
.field public static final ERROR_INVALID_PARAMETERS:I = 0x1

.field public static final ERROR_SIZE:I = 0x2

.field public static final ERROR_TOO_MANY_MESSAGES:I = 0x4

.field public static final ERROR_TTL_EXCEEDED:I = 0x3

.field public static final ERROR_UNKNOWN:I


# instance fields
.field private final errorCode:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 9

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_5c

    .line 4
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const/4 v5, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_60

    goto :goto_4a

    :sswitch_19
    const-string v6, "missing_to"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4a

    move v5, v4

    goto :goto_4a

    :sswitch_23
    const-string v6, "messagetoobig"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4a

    move v5, v3

    goto :goto_4a

    :sswitch_2d
    const-string v6, "invalid_parameters"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4a

    move v5, v0

    goto :goto_4a

    :sswitch_37
    const-string v6, "toomanymessages"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4a

    move v5, v1

    goto :goto_4a

    :sswitch_41
    const-string v6, "service_not_available"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4a

    move v5, v2

    :cond_4a
    :goto_4a
    if-eqz v5, :cond_5b

    if-eq v5, v4, :cond_5b

    if-eq v5, v3, :cond_59

    if-eq v5, v2, :cond_57

    if-eq v5, v1, :cond_55

    goto :goto_5c

    :cond_55
    move v0, v1

    goto :goto_5c

    :cond_57
    move v0, v2

    goto :goto_5c

    :cond_59
    move v0, v3

    goto :goto_5c

    :cond_5b
    move v0, v4

    .line 10
    :cond_5c
    :goto_5c
    iput v0, p0, Lcom/google/firebase/messaging/SendException;->errorCode:I

    return-void

    nop

    :sswitch_data_60
    .sparse-switch
        -0x67e7c3ad -> :sswitch_41
        -0x4cf26401 -> :sswitch_37
        -0x36e3eace -> :sswitch_2d
        -0x24c7160d -> :sswitch_23
        -0x5aa500c -> :sswitch_19
    .end sparse-switch
.end method


# virtual methods
.method public final getErrorCode()I
    .registers 2

    .line 12
    iget v0, p0, Lcom/google/firebase/messaging/SendException;->errorCode:I

    return v0
.end method
