.class Lcom/nimbusds/jose/shaded/json/JStylerObj$Escape4Web;
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
    name = "Escape4Web"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nimbusds/jose/shaded/json/JStylerObj$1;)V
    .registers 2

    .line 263
    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/json/JStylerObj$Escape4Web;-><init>()V

    return-void
.end method


# virtual methods
.method public escape(Ljava/lang/String;Ljava/lang/Appendable;)V
    .registers 8

    .line 274
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_a3

    .line 276
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_9a

    const/16 v3, 0xd

    if-eq v2, v3, :cond_94

    const/16 v3, 0x22

    if-eq v2, v3, :cond_8e

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_88

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_82

    packed-switch v2, :pswitch_data_ac

    if-ltz v2, :cond_28

    const/16 v3, 0x1f

    if-le v2, v3, :cond_38

    :cond_28
    const/16 v3, 0x7f

    if-lt v2, v3, :cond_30

    const/16 v3, 0x9f

    if-le v2, v3, :cond_38

    :cond_30
    const/16 v3, 0x2000

    if-lt v2, v3, :cond_6c

    const/16 v3, 0x20ff

    if-gt v2, v3, :cond_6c

    :cond_38
    const-string v3, "\\u"

    .line 307
    invoke-interface {p2, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    const-string v3, "0123456789ABCDEF"

    shr-int/lit8 v4, v2, 0xc

    and-int/lit8 v4, v4, 0xf

    .line 309
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-interface {p2, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    shr-int/lit8 v4, v2, 0x8

    and-int/lit8 v4, v4, 0xf

    .line 310
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-interface {p2, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    shr-int/lit8 v4, v2, 0x4

    and-int/lit8 v4, v4, 0xf

    .line 311
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-interface {p2, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    shr-int/lit8 v2, v2, 0x0

    and-int/lit8 v2, v2, 0xf

    .line 312
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-interface {p2, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_9f

    .line 314
    :cond_6c
    invoke-interface {p2, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_9f

    :pswitch_70
    const-string v2, "\\n"

    .line 291
    invoke-interface {p2, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_9f

    :pswitch_76
    const-string v2, "\\t"

    .line 297
    invoke-interface {p2, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_9f

    :pswitch_7c
    const-string v2, "\\b"

    .line 285
    invoke-interface {p2, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_9f

    :cond_82
    const-string v2, "\\\\"

    .line 282
    invoke-interface {p2, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_9f

    :cond_88
    const-string v2, "\\/"

    .line 300
    invoke-interface {p2, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_9f

    :cond_8e
    const-string v2, "\\\""

    .line 279
    invoke-interface {p2, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_9f

    :cond_94
    const-string v2, "\\r"

    .line 294
    invoke-interface {p2, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_9f

    :cond_9a
    const-string v2, "\\f"

    .line 288
    invoke-interface {p2, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9f} :catch_a4

    :goto_9f
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    :cond_a3
    return-void

    .line 319
    :catch_a4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Impossible Error"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_ac
    .packed-switch 0x8
        :pswitch_7c
        :pswitch_76
        :pswitch_70
    .end packed-switch
.end method
