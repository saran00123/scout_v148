.class public Lorg/bouncycastle/i18n/filter/SQLFilter;
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

    if-ge p1, v1, :cond_68

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_5e

    const/16 v2, 0xd

    if-eq v1, v2, :cond_59

    const/16 v2, 0x22

    if-eq v1, v2, :cond_54

    const/16 v2, 0x27

    if-eq v1, v2, :cond_4f

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_4a

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_45

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_40

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_3b

    const/16 v2, 0x5c

    if-eq v1, v2, :cond_36

    move v1, p1

    goto :goto_65

    :cond_36
    add-int/lit8 v1, p1, 0x1

    const-string v2, "\\\\"

    goto :goto_62

    :cond_3b
    add-int/lit8 v1, p1, 0x1

    const-string v2, "\\="

    goto :goto_62

    :cond_40
    add-int/lit8 v1, p1, 0x1

    const-string v2, "\\;"

    goto :goto_62

    :cond_45
    add-int/lit8 v1, p1, 0x1

    const-string v2, "\\/"

    goto :goto_62

    :cond_4a
    add-int/lit8 v1, p1, 0x1

    const-string v2, "\\-"

    goto :goto_62

    :cond_4f
    add-int/lit8 v1, p1, 0x1

    const-string v2, "\\\'"

    goto :goto_62

    :cond_54
    add-int/lit8 v1, p1, 0x1

    const-string v2, "\\\""

    goto :goto_62

    :cond_59
    add-int/lit8 v1, p1, 0x1

    const-string v2, "\\r"

    goto :goto_62

    :cond_5e
    add-int/lit8 v1, p1, 0x1

    const-string v2, "\\n"

    :goto_62
    invoke-virtual {v0, p1, v1, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    :goto_65
    add-int/lit8 p1, v1, 0x1

    goto :goto_6

    :cond_68
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public doFilterUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/bouncycastle/i18n/filter/SQLFilter;->doFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
