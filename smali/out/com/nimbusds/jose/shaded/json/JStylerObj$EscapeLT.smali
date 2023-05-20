.class Lcom/nimbusds/jose/shaded/json/JStylerObj$EscapeLT;
.super Ljava/lang/Object;
.source "JStylerObj.java"

# interfaces
.implements Lcom/nimbusds/jose/shaded/json/JStylerObj$StringProtector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/shaded/json/JStylerObj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EscapeLT"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nimbusds/jose/shaded/json/JStylerObj$1;)V
    .registers 2

    .line 206
    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/json/JStylerObj$EscapeLT;-><init>()V

    return-void
.end method


# virtual methods
.method public escape(Ljava/lang/String;Ljava/lang/Appendable;)V
    .registers 8

    .line 216
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_99

    .line 218
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_90

    const/16 v3, 0xd

    if-eq v2, v3, :cond_8a

    const/16 v3, 0x22

    if-eq v2, v3, :cond_84

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_7e

    packed-switch v2, :pswitch_data_a2

    if-ltz v2, :cond_24

    const/16 v3, 0x1f

    if-le v2, v3, :cond_34

    :cond_24
    const/16 v3, 0x7f

    if-lt v2, v3, :cond_2c

    const/16 v3, 0x9f

    if-le v2, v3, :cond_34

    :cond_2c
    const/16 v3, 0x2000

    if-lt v2, v3, :cond_68

    const/16 v3, 0x20ff

    if-gt v2, v3, :cond_68

    :cond_34
    const-string v3, "\\u"

    .line 246
    invoke-interface {p2, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    const-string v3, "0123456789ABCDEF"

    shr-int/lit8 v4, v2, 0xc

    and-int/lit8 v4, v4, 0xf

    .line 248
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-interface {p2, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    shr-int/lit8 v4, v2, 0x8

    and-int/lit8 v4, v4, 0xf

    .line 249
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-interface {p2, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    shr-int/lit8 v4, v2, 0x4

    and-int/lit8 v4, v4, 0xf

    .line 250
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-interface {p2, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    shr-int/lit8 v2, v2, 0x0

    and-int/lit8 v2, v2, 0xf

    .line 251
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-interface {p2, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_95

    .line 253
    :cond_68
    invoke-interface {p2, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_95

    :pswitch_6c
    const-string v2, "\\n"

    .line 233
    invoke-interface {p2, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_95

    :pswitch_72
    const-string v2, "\\t"

    .line 239
    invoke-interface {p2, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_95

    :pswitch_78
    const-string v2, "\\b"

    .line 227
    invoke-interface {p2, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_95

    :cond_7e
    const-string v2, "\\\\"

    .line 224
    invoke-interface {p2, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_95

    :cond_84
    const-string v2, "\\\""

    .line 221
    invoke-interface {p2, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_95

    :cond_8a
    const-string v2, "\\r"

    .line 236
    invoke-interface {p2, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_95

    :cond_90
    const-string v2, "\\f"

    .line 230
    invoke-interface {p2, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_95} :catch_9a

    :goto_95
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    :cond_99
    return-void

    .line 258
    :catch_9a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Impossible Exeption"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_a2
    .packed-switch 0x8
        :pswitch_78
        :pswitch_72
        :pswitch_6c
    .end packed-switch
.end method
