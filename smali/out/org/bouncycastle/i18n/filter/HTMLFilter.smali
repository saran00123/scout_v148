.class public Lorg/bouncycastle/i18n/filter/HTMLFilter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/i18n/filter/Filter;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFilter(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-ge p1, v1, :cond_73

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-eq v1, v2, :cond_69

    const/16 v2, 0x23

    if-eq v1, v2, :cond_64

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_5f

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_5a

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_55

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_50

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_4b

    packed-switch v1, :pswitch_data_78

    add-int/lit8 p1, p1, -0x3

    goto :goto_70

    :pswitch_32
    add-int/lit8 v1, p1, 0x1

    const-string v2, "&#41"

    goto :goto_6d

    :pswitch_37
    add-int/lit8 v1, p1, 0x1

    const-string v2, "&#40"

    goto :goto_6d

    :pswitch_3c
    add-int/lit8 v1, p1, 0x1

    const-string v2, "&#39"

    goto :goto_6d

    :pswitch_41
    add-int/lit8 v1, p1, 0x1

    const-string v2, "&#38"

    goto :goto_6d

    :pswitch_46
    add-int/lit8 v1, p1, 0x1

    const-string v2, "&#37"

    goto :goto_6d

    :cond_4b
    add-int/lit8 v1, p1, 0x1

    const-string v2, "&#60"

    goto :goto_6d

    :cond_50
    add-int/lit8 v1, p1, 0x1

    const-string v2, "&#59"

    goto :goto_6d

    :cond_55
    add-int/lit8 v1, p1, 0x1

    const-string v2, "&#62"

    goto :goto_6d

    :cond_5a
    add-int/lit8 v1, p1, 0x1

    const-string v2, "&#45"

    goto :goto_6d

    :cond_5f
    add-int/lit8 v1, p1, 0x1

    const-string v2, "&#43"

    goto :goto_6d

    :cond_64
    add-int/lit8 v1, p1, 0x1

    const-string v2, "&#35"

    goto :goto_6d

    :cond_69
    add-int/lit8 v1, p1, 0x1

    const-string v2, "&#34"

    :goto_6d
    invoke-virtual {v0, p1, v1, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    :goto_70
    add-int/lit8 p1, p1, 0x4

    goto :goto_6

    :cond_73
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_78
    .packed-switch 0x25
        :pswitch_46
        :pswitch_41
        :pswitch_3c
        :pswitch_37
        :pswitch_32
    .end packed-switch
.end method

.method public doFilterUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/bouncycastle/i18n/filter/HTMLFilter;->doFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
