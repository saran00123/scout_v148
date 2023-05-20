.class abstract Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;
.super Ljava/lang/Object;
.source "JSONParserBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;
    }
.end annotation


# static fields
.field public static final EOI:B = 0x1at

.field protected static final MAX_STOP:C = '~'

.field protected static stopAll:[Z

.field protected static stopArray:[Z

.field protected static stopKey:[Z

.field protected static stopValue:[Z

.field protected static stopX:[Z


# instance fields
.field protected final acceptLeadinZero:Z

.field protected final acceptNaN:Z

.field protected final acceptNonQuote:Z

.field protected final acceptSimpleQuote:Z

.field protected final acceptUselessComma:Z

.field protected c:C

.field protected final checkTaillingData:Z

.field protected final checkTaillingSpace:Z

.field protected containerFactory:Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;

.field protected handler:Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;

.field protected final ignoreControlChar:Z

.field protected pos:I

.field protected final sb:Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;

.field protected final useHiPrecisionFloat:Z

.field protected final useIntegerStorage:Z

.field protected xo:Ljava/lang/Object;

.field protected xs:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/16 v0, 0x7e

    .line 46
    new-array v1, v0, [Z

    sput-object v1, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->stopAll:[Z

    .line 47
    new-array v1, v0, [Z

    sput-object v1, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->stopArray:[Z

    .line 48
    new-array v1, v0, [Z

    sput-object v1, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->stopKey:[Z

    .line 49
    new-array v1, v0, [Z

    sput-object v1, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->stopValue:[Z

    .line 50
    new-array v0, v0, [Z

    sput-object v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->stopX:[Z

    .line 53
    sget-object v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->stopKey:[Z

    const/16 v1, 0x1a

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    const/16 v3, 0x3a

    aput-boolean v2, v0, v3

    .line 54
    sget-object v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->stopValue:[Z

    aput-boolean v2, v0, v1

    const/16 v4, 0x7d

    aput-boolean v2, v0, v4

    const/16 v5, 0x2c

    aput-boolean v2, v0, v5

    .line 55
    sget-object v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->stopArray:[Z

    aput-boolean v2, v0, v1

    const/16 v6, 0x5d

    aput-boolean v2, v0, v6

    aput-boolean v2, v0, v5

    .line 56
    sget-object v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->stopX:[Z

    aput-boolean v2, v0, v1

    .line 57
    sget-object v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->stopAll:[Z

    aput-boolean v2, v0, v3

    aput-boolean v2, v0, v5

    .line 58
    aput-boolean v2, v0, v1

    aput-boolean v2, v0, v4

    aput-boolean v2, v0, v6

    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;-><init>(I)V

    iput-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->sb:Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;

    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_14

    move v0, v2

    goto :goto_15

    :cond_14
    move v0, v1

    .line 86
    :goto_15
    iput-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->acceptNaN:Z

    and-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_1d

    move v0, v2

    goto :goto_1e

    :cond_1d
    move v0, v1

    .line 87
    :goto_1e
    iput-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->acceptNonQuote:Z

    and-int/lit8 v0, p1, 0x1

    if-lez v0, :cond_26

    move v0, v2

    goto :goto_27

    :cond_26
    move v0, v1

    .line 88
    :goto_27
    iput-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->acceptSimpleQuote:Z

    and-int/lit8 v0, p1, 0x8

    if-lez v0, :cond_2f

    move v0, v2

    goto :goto_30

    :cond_2f
    move v0, v1

    .line 89
    :goto_30
    iput-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->ignoreControlChar:Z

    and-int/lit8 v0, p1, 0x10

    if-lez v0, :cond_38

    move v0, v2

    goto :goto_39

    :cond_38
    move v0, v1

    .line 90
    :goto_39
    iput-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->useIntegerStorage:Z

    and-int/lit8 v0, p1, 0x20

    if-lez v0, :cond_41

    move v0, v2

    goto :goto_42

    :cond_41
    move v0, v1

    .line 91
    :goto_42
    iput-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->acceptLeadinZero:Z

    and-int/lit8 v0, p1, 0x40

    if-lez v0, :cond_4a

    move v0, v2

    goto :goto_4b

    :cond_4a
    move v0, v1

    .line 92
    :goto_4b
    iput-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->acceptUselessComma:Z

    and-int/lit16 v0, p1, 0x80

    if-lez v0, :cond_53

    move v0, v2

    goto :goto_54

    :cond_53
    move v0, v1

    .line 93
    :goto_54
    iput-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->useHiPrecisionFloat:Z

    and-int/lit16 v0, p1, 0x300

    if-nez v0, :cond_5c

    move v0, v2

    goto :goto_5d

    :cond_5c
    move v0, v1

    .line 94
    :goto_5d
    iput-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->checkTaillingData:Z

    and-int/lit16 p1, p1, 0x200

    if-nez p1, :cond_64

    move v1, v2

    .line 95
    :cond_64
    iput-boolean v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->checkTaillingSpace:Z

    return-void
.end method


# virtual methods
.method public checkControleChar()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;
        }
    .end annotation

    .line 99
    iget-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->ignoreControlChar:Z

    if-eqz v0, :cond_5

    return-void

    .line 101
    :cond_5
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_d
    if-ge v2, v0, :cond_3d

    .line 103
    iget-object v3, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gez v3, :cond_18

    goto :goto_20

    :cond_18
    const/16 v4, 0x1f

    if-le v3, v4, :cond_30

    const/16 v4, 0x7f

    if-eq v3, v4, :cond_23

    :goto_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 109
    :cond_23
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/ParseException;

    iget v4, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->pos:I

    add-int/2addr v4, v2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-direct {v0, v4, v1, v2}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0

    .line 107
    :cond_30
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/ParseException;

    iget v4, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->pos:I

    add-int/2addr v4, v2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-direct {v0, v4, v1, v2}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0

    :cond_3d
    return-void
.end method

.method public checkLeadinZero()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    return-void

    :cond_a
    const/4 v2, 0x2

    const/4 v3, 0x6

    if-ne v0, v2, :cond_23

    .line 118
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    return-void

    .line 119
    :cond_19
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/ParseException;

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->pos:I

    iget-object v2, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-direct {v0, v1, v3, v2}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0

    .line 122
    :cond_23
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 123
    iget-object v4, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x2d

    const/16 v5, 0x39

    const/16 v6, 0x30

    if-ne v0, v4, :cond_50

    .line 125
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v1, v6, :cond_4f

    if-lt v0, v6, :cond_4f

    if-le v0, v5, :cond_45

    goto :goto_4f

    .line 127
    :cond_45
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/ParseException;

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->pos:I

    iget-object v2, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-direct {v0, v1, v3, v2}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0

    :cond_4f
    :goto_4f
    return-void

    :cond_50
    if-ne v0, v6, :cond_61

    if-lt v1, v6, :cond_61

    if-le v1, v5, :cond_57

    goto :goto_61

    .line 131
    :cond_57
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/ParseException;

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->pos:I

    iget-object v2, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-direct {v0, v1, v3, v2}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0

    :cond_61
    :goto_61
    return-void
.end method

.method protected extractFloat()Ljava/lang/Number;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;
        }
    .end annotation

    .line 135
    iget-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->acceptLeadinZero:Z

    if-nez v0, :cond_7

    .line 136
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->checkLeadinZero()V

    .line 137
    :cond_7
    iget-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->useHiPrecisionFloat:Z

    if-nez v0, :cond_16

    .line 138
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 139
    :cond_16
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x12

    if-le v0, v1, :cond_28

    .line 140
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 141
    :cond_28
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method protected parse(Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;
        }
    .end annotation

    .line 149
    iput-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->containerFactory:Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;

    .line 150
    iput-object p2, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->handler:Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;

    .line 154
    :try_start_4
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->read()V

    .line 155
    invoke-interface {p2}, Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;->startJSON()V

    .line 156
    sget-object p1, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->stopX:[Z

    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->readMain([Z)Ljava/lang/Object;

    move-result-object p1

    .line 157
    invoke-interface {p2}, Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;->endJSON()V

    .line 158
    iget-boolean p2, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->checkTaillingData:Z

    if-eqz p2, :cond_35

    .line 159
    iget-boolean p2, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->checkTaillingSpace:Z

    if-nez p2, :cond_1e

    .line 160
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->skipSpace()V

    .line 161
    :cond_1e
    iget-char p2, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->c:C

    const/16 v0, 0x1a

    if-ne p2, v0, :cond_25

    goto :goto_35

    .line 162
    :cond_25
    new-instance p1, Lcom/nimbusds/jose/shaded/json/parser/ParseException;

    iget p2, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->pos:I

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    iget-char v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->c:C

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-direct {p1, p2, v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_35} :catch_3b

    :cond_35
    :goto_35
    const/4 p2, 0x0

    .line 167
    iput-object p2, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    .line 168
    iput-object p2, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->xo:Ljava/lang/Object;

    return-object p1

    :catch_3b
    move-exception p1

    .line 165
    new-instance p2, Lcom/nimbusds/jose/shaded/json/parser/ParseException;

    iget v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->pos:I

    invoke-direct {p2, v0, p1}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;-><init>(ILjava/lang/Throwable;)V

    throw p2
.end method

.method protected parseNumber(Ljava/lang/String;)Ljava/lang/Number;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;
        }
    .end annotation

    .line 176
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    .line 181
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x6

    const/16 v4, 0x30

    const/4 v5, 0x1

    const/16 v6, 0x2d

    if-ne v2, v6, :cond_2b

    const/16 v2, 0x14

    .line 185
    iget-boolean v6, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->acceptLeadinZero:Z

    if-nez v6, :cond_29

    const/4 v6, 0x3

    if-lt v0, v6, :cond_29

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v4, :cond_21

    goto :goto_29

    .line 186
    :cond_21
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/ParseException;

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->pos:I

    invoke-direct {v0, v1, v3, p1}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0

    :cond_29
    :goto_29
    move v3, v5

    goto :goto_44

    .line 189
    :cond_2b
    iget-boolean v2, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->acceptLeadinZero:Z

    if-nez v2, :cond_41

    const/4 v2, 0x2

    if-lt v0, v2, :cond_41

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_39

    goto :goto_41

    .line 190
    :cond_39
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/ParseException;

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->pos:I

    invoke-direct {v0, v1, v3, p1}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0

    :cond_41
    :goto_41
    const/16 v2, 0x13

    move v3, v1

    :goto_44
    move v6, v3

    const/16 v7, 0xa

    if-ge v0, v2, :cond_4c

    move v2, v0

    move v0, v1

    goto :goto_58

    :cond_4c
    if-le v0, v2, :cond_54

    .line 198
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    return-object v0

    :cond_54
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move v0, v5

    :goto_58
    const-wide/16 v8, 0x0

    :goto_5a
    const-wide/16 v10, 0xa

    if-ge v3, v2, :cond_6b

    mul-long/2addr v8, v10

    add-int/lit8 v10, v3, 0x1

    .line 206
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    rsub-int/lit8 v3, v3, 0x30

    int-to-long v11, v3

    add-long/2addr v8, v11

    move v3, v10

    goto :goto_5a

    :cond_6b
    if-eqz v0, :cond_9f

    const-wide v12, -0xcccccccccccccccL

    cmp-long v0, v8, v12

    if-lez v0, :cond_77

    goto :goto_8f

    :cond_77
    if-gez v0, :cond_7b

    :goto_79
    move v1, v5

    goto :goto_8f

    :cond_7b
    if-eqz v6, :cond_86

    .line 216
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x38

    if-le v0, v2, :cond_8f

    goto :goto_79

    .line 218
    :cond_86
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x37

    if-le v0, v2, :cond_8f

    goto :goto_79

    :cond_8f
    :goto_8f
    if-eqz v1, :cond_97

    .line 221
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    return-object v0

    :cond_97
    mul-long/2addr v8, v10

    .line 222
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    sub-int/2addr v4, p1

    int-to-long v0, v4

    add-long/2addr v8, v0

    :cond_9f
    if-eqz v6, :cond_b7

    .line 225
    iget-boolean p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->useIntegerStorage:Z

    if-eqz p1, :cond_b2

    const-wide/32 v0, -0x80000000

    cmp-long p1, v8, v0

    if-ltz p1, :cond_b2

    long-to-int p1, v8

    .line 226
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 227
    :cond_b2
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_b7
    neg-long v0, v8

    .line 230
    iget-boolean p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->useIntegerStorage:Z

    if-eqz p1, :cond_c9

    const-wide/32 v2, 0x7fffffff

    cmp-long p1, v0, v2

    if-gtz p1, :cond_c9

    long-to-int p1, v0

    .line 231
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 232
    :cond_c9
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected abstract read()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected readArray()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->containerFactory:Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;

    invoke-interface {v0}, Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;->createArrayContainer()Ljava/util/List;

    move-result-object v0

    .line 244
    iget-char v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->c:C

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_9a

    .line 246
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->read()V

    .line 248
    iget-object v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->handler:Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;

    invoke-interface {v1}, Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;->startArray()Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_16
    move v3, v2

    .line 250
    :goto_17
    iget-char v4, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->c:C

    const/16 v5, 0x9

    if-eq v4, v5, :cond_95

    const/16 v5, 0xa

    if-eq v4, v5, :cond_95

    const/16 v5, 0xd

    if-eq v4, v5, :cond_95

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_89

    const/16 v5, 0x20

    if-eq v4, v5, :cond_95

    const/16 v5, 0x2c

    if-eq v4, v5, :cond_71

    const/16 v5, 0x3a

    if-eq v4, v5, :cond_63

    const/16 v5, 0x5d

    if-eq v4, v5, :cond_47

    const/16 v3, 0x7d

    if-eq v4, v3, :cond_63

    .line 275
    sget-object v3, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->stopArray:[Z

    invoke-virtual {p0, v3}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->readMain([Z)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_47
    if-eqz v3, :cond_5a

    .line 258
    iget-boolean v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->acceptUselessComma:Z

    if-eqz v1, :cond_4e

    goto :goto_5a

    .line 259
    :cond_4e
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/ParseException;

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->pos:I

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0

    .line 260
    :cond_5a
    :goto_5a
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->read()V

    .line 261
    iget-object v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->handler:Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;

    invoke-interface {v1}, Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;->endArray()Z

    return-object v0

    .line 265
    :cond_63
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/ParseException;

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->pos:I

    iget-char v3, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->c:C

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0

    :cond_71
    if-eqz v3, :cond_84

    .line 267
    iget-boolean v3, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->acceptUselessComma:Z

    if-eqz v3, :cond_78

    goto :goto_84

    .line 268
    :cond_78
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/ParseException;

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->pos:I

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0

    .line 269
    :cond_84
    :goto_84
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->read()V

    move v3, v1

    goto :goto_17

    .line 273
    :cond_89
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/ParseException;

    iget v2, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->pos:I

    sub-int/2addr v2, v1

    const/4 v1, 0x3

    const-string v3, "EOF"

    invoke-direct {v0, v2, v1, v3}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0

    .line 255
    :cond_95
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->read()V

    goto/16 :goto_17

    .line 245
    :cond_9a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal Error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected readMain([Z)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    :goto_0
    iget-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->c:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_12f

    const/16 v1, 0xa

    if-eq v0, v1, :cond_12f

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_134

    packed-switch v0, :pswitch_data_16a

    .line 383
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->readNQString([Z)V

    .line 384
    iget-boolean p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->acceptNonQuote:Z

    if-eqz p1, :cond_22

    .line 386
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->handler:Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;

    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;->primitive(Ljava/lang/Object;)Z

    .line 387
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    return-object p1

    .line 385
    :cond_22
    new-instance p1, Lcom/nimbusds/jose/shaded/json/parser/ParseException;

    iget v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->pos:I

    iget-object v2, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 311
    :sswitch_2c
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->readObject()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 345
    :sswitch_31
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->readNQString([Z)V

    .line 346
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 347
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->handler:Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;->primitive(Ljava/lang/Object;)Z

    .line 348
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 350
    :cond_48
    iget-boolean p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->acceptNonQuote:Z

    if-eqz p1, :cond_56

    .line 352
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->handler:Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;

    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;->primitive(Ljava/lang/Object;)Z

    .line 353
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    return-object p1

    .line 351
    :cond_56
    new-instance p1, Lcom/nimbusds/jose/shaded/json/parser/ParseException;

    iget v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->pos:I

    iget-object v2, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 323
    :sswitch_60
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->readNQString([Z)V

    .line 324
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    const-string v0, "null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_74

    .line 325
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->handler:Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;->primitive(Ljava/lang/Object;)Z

    return-object v0

    .line 328
    :cond_74
    iget-boolean p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->acceptNonQuote:Z

    if-eqz p1, :cond_82

    .line 330
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->handler:Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;

    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;->primitive(Ljava/lang/Object;)Z

    .line 331
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    return-object p1

    .line 329
    :cond_82
    new-instance p1, Lcom/nimbusds/jose/shaded/json/parser/ParseException;

    iget v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->pos:I

    iget-object v2, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 334
    :sswitch_8c
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->readNQString([Z)V

    .line 335
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    const-string v0, "false"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a3

    .line 336
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->handler:Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;->primitive(Ljava/lang/Object;)Z

    .line 337
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 339
    :cond_a3
    iget-boolean p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->acceptNonQuote:Z

    if-eqz p1, :cond_b1

    .line 341
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->handler:Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;

    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;->primitive(Ljava/lang/Object;)Z

    .line 342
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    return-object p1

    .line 340
    :cond_b1
    new-instance p1, Lcom/nimbusds/jose/shaded/json/parser/ParseException;

    iget v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->pos:I

    iget-object v2, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 308
    :pswitch_bb
    :sswitch_bb
    new-instance p1, Lcom/nimbusds/jose/shaded/json/parser/ParseException;

    iget v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->pos:I

    const/4 v1, 0x0

    iget-char v2, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->c:C

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 314
    :sswitch_ca
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->readArray()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 356
    :sswitch_cf
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->readNQString([Z)V

    .line 357
    iget-boolean p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->acceptNaN:Z

    if-eqz p1, :cond_108

    .line 359
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    const-string v0, "NaN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f0

    .line 360
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->handler:Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;

    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;->primitive(Ljava/lang/Object;)Z

    .line 361
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 363
    :cond_f0
    iget-boolean p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->acceptNonQuote:Z

    if-eqz p1, :cond_fe

    .line 365
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->handler:Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;

    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;->primitive(Ljava/lang/Object;)Z

    .line 366
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    return-object p1

    .line 364
    :cond_fe
    new-instance p1, Lcom/nimbusds/jose/shaded/json/parser/ParseException;

    iget v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->pos:I

    iget-object v2, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 358
    :cond_108
    new-instance p1, Lcom/nimbusds/jose/shaded/json/parser/ParseException;

    iget v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->pos:I

    iget-object v2, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 379
    :pswitch_112
    :sswitch_112
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->readNumber([Z)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->xo:Ljava/lang/Object;

    .line 380
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->handler:Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;

    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->xo:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;->primitive(Ljava/lang/Object;)Z

    .line 381
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->xo:Ljava/lang/Object;

    return-object p1

    .line 318
    :sswitch_122
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->readString()V

    .line 319
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->handler:Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;

    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;->primitive(Ljava/lang/Object;)Z

    .line 320
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    return-object p1

    .line 302
    :cond_12f
    :sswitch_12f
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->read()V

    goto/16 :goto_0

    :sswitch_data_134
    .sparse-switch
        0xd -> :sswitch_12f
        0x20 -> :sswitch_12f
        0x22 -> :sswitch_122
        0x27 -> :sswitch_122
        0x2d -> :sswitch_112
        0x4e -> :sswitch_cf
        0x5b -> :sswitch_ca
        0x5d -> :sswitch_bb
        0x66 -> :sswitch_8c
        0x6e -> :sswitch_60
        0x74 -> :sswitch_31
        0x7b -> :sswitch_2c
        0x7d -> :sswitch_bb
    .end sparse-switch

    :pswitch_data_16a
    .packed-switch 0x30
        :pswitch_112
        :pswitch_112
        :pswitch_112
        :pswitch_112
        :pswitch_112
        :pswitch_112
        :pswitch_112
        :pswitch_112
        :pswitch_112
        :pswitch_112
        :pswitch_bb
    .end packed-switch
.end method

.method protected abstract readNQString([Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract readNoEnd()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract readNumber([Z)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected readObject()Ljava/util/Map;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->containerFactory:Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;

    invoke-interface {v0}, Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;->createObjectContainer()Ljava/util/Map;

    move-result-object v0

    .line 400
    iget-char v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->c:C

    const/16 v2, 0x7b

    if-ne v1, v2, :cond_10f

    .line 402
    iget-object v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->handler:Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;

    invoke-interface {v1}, Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;->startObject()Z

    const/4 v1, 0x0

    const/4 v3, 0x1

    move v4, v1

    move v5, v3

    .line 406
    :cond_15
    :goto_15
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->read()V

    .line 407
    iget-char v6, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->c:C

    const/16 v7, 0x9

    if-eq v6, v7, :cond_15

    const/16 v7, 0xa

    if-eq v6, v7, :cond_15

    const/16 v7, 0xd

    if-eq v6, v7, :cond_15

    const/16 v7, 0x20

    if-eq v6, v7, :cond_15

    const/16 v7, 0x2c

    if-eq v6, v7, :cond_f8

    const/16 v8, 0x3a

    if-eq v6, v8, :cond_ea

    const/16 v9, 0x5b

    if-eq v6, v9, :cond_ea

    const/16 v9, 0x5d

    if-eq v6, v9, :cond_ea

    if-eq v6, v2, :cond_ea

    const/16 v9, 0x7d

    if-eq v6, v9, :cond_ce

    .line 432
    iget v4, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->pos:I

    const/16 v10, 0x22

    if-eq v6, v10, :cond_5f

    const/16 v10, 0x27

    if-ne v6, v10, :cond_4b

    goto :goto_5f

    .line 436
    :cond_4b
    sget-object v6, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->stopKey:[Z

    invoke-virtual {p0, v6}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->readNQString([Z)V

    .line 437
    iget-boolean v6, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->acceptNonQuote:Z

    if-eqz v6, :cond_55

    goto :goto_62

    .line 438
    :cond_55
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/ParseException;

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->pos:I

    iget-object v2, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-direct {v0, v1, v3, v2}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0

    .line 434
    :cond_5f
    :goto_5f
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->readString()V

    .line 440
    :goto_62
    iget-object v6, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    if-eqz v5, :cond_c6

    .line 443
    iget-object v5, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->handler:Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;

    invoke-interface {v5, v6}, Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;->startObjectEntry(Ljava/lang/String;)Z

    .line 446
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->skipSpace()V

    .line 448
    iget-char v5, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->c:C

    const/4 v10, 0x0

    const/4 v11, 0x3

    const/16 v12, 0x1a

    if-eq v5, v8, :cond_8e

    if-ne v5, v12, :cond_81

    .line 450
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/ParseException;

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->pos:I

    sub-int/2addr v1, v3

    invoke-direct {v0, v1, v11, v10}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0

    .line 451
    :cond_81
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/ParseException;

    iget v2, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->pos:I

    sub-int/2addr v2, v3

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0

    .line 453
    :cond_8e
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->readNoEnd()V

    .line 454
    sget-object v5, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->stopValue:[Z

    invoke-virtual {p0, v5}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->readMain([Z)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_bf

    .line 457
    iget-object v4, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->handler:Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;

    invoke-interface {v4}, Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;->endObjectEntry()Z

    .line 464
    iget-char v4, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->c:C

    if-ne v4, v9, :cond_af

    .line 465
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->read()V

    .line 466
    iget-object v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->handler:Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;

    invoke-interface {v1}, Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;->endObject()Z

    return-object v0

    :cond_af
    if-eq v4, v12, :cond_b6

    if-ne v4, v7, :cond_b4

    goto :goto_10b

    :cond_b4
    move v4, v1

    goto :goto_10c

    .line 470
    :cond_b6
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/ParseException;

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->pos:I

    sub-int/2addr v1, v3

    invoke-direct {v0, v1, v11, v10}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0

    .line 456
    :cond_bf
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/ParseException;

    const/4 v1, 0x5

    invoke-direct {v0, v4, v1, v6}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0

    .line 442
    :cond_c6
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/ParseException;

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->pos:I

    invoke-direct {v0, v1, v3, v6}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0

    :cond_ce
    if-eqz v4, :cond_e1

    .line 419
    iget-boolean v2, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->acceptUselessComma:Z

    if-eqz v2, :cond_d5

    goto :goto_e1

    .line 420
    :cond_d5
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/ParseException;

    iget v2, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->pos:I

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0

    .line 421
    :cond_e1
    :goto_e1
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->read()V

    .line 422
    iget-object v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->handler:Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;

    invoke-interface {v1}, Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;->endObject()Z

    return-object v0

    .line 417
    :cond_ea
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/ParseException;

    iget v2, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->pos:I

    iget-char v3, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->c:C

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0

    :cond_f8
    if-eqz v4, :cond_10b

    .line 425
    iget-boolean v4, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->acceptUselessComma:Z

    if-eqz v4, :cond_ff

    goto :goto_10b

    .line 426
    :cond_ff
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/ParseException;

    iget v2, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->pos:I

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0

    :cond_10b
    :goto_10b
    move v4, v3

    :goto_10c
    move v5, v4

    goto/16 :goto_15

    .line 401
    :cond_10f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal Error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract readS()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract readString()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected readString2()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 490
    iget-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->c:C

    .line 492
    :goto_2
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->read()V

    .line 493
    iget-char v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->c:C

    const/16 v2, 0x22

    if-eq v1, v2, :cond_cb

    const/16 v3, 0x27

    if-eq v1, v3, :cond_cb

    const/16 v4, 0x5c

    if-eq v1, v4, :cond_40

    const/16 v2, 0x7f

    if-eq v1, v2, :cond_2c

    packed-switch v1, :pswitch_data_e2

    .line 581
    iget-object v2, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->sb:Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;

    invoke-virtual {v2, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;->append(C)V

    goto :goto_2

    .line 495
    :pswitch_20
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/ParseException;

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->pos:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0

    .line 577
    :cond_2c
    :pswitch_2c
    iget-boolean v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->ignoreControlChar:Z

    if-eqz v1, :cond_31

    goto :goto_2

    .line 579
    :cond_31
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/ParseException;

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->pos:I

    const/4 v2, 0x0

    iget-char v3, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->c:C

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0

    .line 506
    :cond_40
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->read()V

    .line 507
    iget-char v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->c:C

    if-eq v1, v2, :cond_c4

    if-eq v1, v3, :cond_bd

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_b6

    if-eq v1, v4, :cond_af

    const/16 v2, 0x62

    if-eq v1, v2, :cond_a6

    const/16 v2, 0x66

    if-eq v1, v2, :cond_9d

    const/16 v2, 0x6e

    if-eq v1, v2, :cond_94

    const/16 v2, 0x72

    if-eq v1, v2, :cond_8b

    const/16 v2, 0x78

    if-eq v1, v2, :cond_7f

    const/16 v2, 0x74

    if-eq v1, v2, :cond_77

    const/16 v2, 0x75

    if-eq v1, v2, :cond_6c

    goto :goto_2

    .line 536
    :cond_6c
    iget-object v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->sb:Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->readUnicode(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;->append(C)V

    goto :goto_2

    .line 509
    :cond_77
    iget-object v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->sb:Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;->append(C)V

    goto :goto_2

    .line 539
    :cond_7f
    iget-object v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->sb:Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->readUnicode(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;->append(C)V

    goto/16 :goto_2

    .line 515
    :cond_8b
    iget-object v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->sb:Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;->append(C)V

    goto/16 :goto_2

    .line 512
    :cond_94
    iget-object v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->sb:Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;->append(C)V

    goto/16 :goto_2

    .line 518
    :cond_9d
    iget-object v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->sb:Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;->append(C)V

    goto/16 :goto_2

    .line 521
    :cond_a6
    iget-object v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->sb:Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;->append(C)V

    goto/16 :goto_2

    .line 524
    :cond_af
    iget-object v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->sb:Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;

    invoke-virtual {v1, v4}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;->append(C)V

    goto/16 :goto_2

    .line 527
    :cond_b6
    iget-object v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->sb:Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;

    invoke-virtual {v1, v2}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;->append(C)V

    goto/16 :goto_2

    .line 530
    :cond_bd
    iget-object v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->sb:Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;

    invoke-virtual {v1, v3}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;->append(C)V

    goto/16 :goto_2

    .line 533
    :cond_c4
    iget-object v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->sb:Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;

    invoke-virtual {v1, v2}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;->append(C)V

    goto/16 :goto_2

    .line 498
    :cond_cb
    iget-char v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->c:C

    if-ne v0, v1, :cond_db

    .line 499
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->read()V

    .line 500
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->sb:Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;

    invoke-virtual {v0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    return-void

    .line 503
    :cond_db
    iget-object v2, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->sb:Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;

    invoke-virtual {v2, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;->append(C)V

    goto/16 :goto_2

    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_20
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
    .end packed-switch
.end method

.method protected readUnicode(I)C
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v0, p1, :cond_54

    mul-int/lit8 v1, v1, 0x10

    .line 590
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->read()V

    .line 591
    iget-char v2, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->c:C

    const/16 v3, 0x39

    if-gt v2, v3, :cond_17

    const/16 v3, 0x30

    if-lt v2, v3, :cond_17

    add-int/lit8 v2, v2, -0x30

    :goto_15
    add-int/2addr v1, v2

    goto :goto_33

    .line 593
    :cond_17
    iget-char v2, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->c:C

    const/16 v3, 0x46

    if-gt v2, v3, :cond_26

    const/16 v3, 0x41

    if-lt v2, v3, :cond_26

    add-int/lit8 v2, v2, -0x41

    :goto_23
    add-int/lit8 v2, v2, 0xa

    goto :goto_15

    .line 595
    :cond_26
    iget-char v2, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->c:C

    const/16 v3, 0x61

    if-lt v2, v3, :cond_36

    const/16 v3, 0x66

    if-gt v2, v3, :cond_36

    add-int/lit8 v2, v2, -0x61

    goto :goto_23

    :goto_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 597
    :cond_36
    iget-char p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->c:C

    const/16 v0, 0x1a

    if-ne p1, v0, :cond_47

    .line 598
    new-instance p1, Lcom/nimbusds/jose/shaded/json/parser/ParseException;

    iget v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->pos:I

    const/4 v1, 0x3

    const-string v2, "EOF"

    invoke-direct {p1, v0, v1, v2}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 600
    :cond_47
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/ParseException;

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->pos:I

    const/4 v2, 0x4

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0

    :cond_54
    int-to-char p1, v1

    return p1
.end method

.method protected skipDigits()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 607
    :goto_0
    iget-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->c:C

    const/16 v1, 0x30

    if-lt v0, v1, :cond_f

    const/16 v1, 0x39

    if-le v0, v1, :cond_b

    goto :goto_f

    .line 609
    :cond_b
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->readS()V

    goto :goto_0

    :cond_f
    :goto_f
    return-void
.end method

.method protected skipNQString([Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 615
    :goto_0
    iget-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->c:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_15

    if-ltz v0, :cond_11

    const/16 v1, 0x7e

    if-ge v0, v1, :cond_11

    aget-boolean v0, p1, v0

    if-eqz v0, :cond_11

    goto :goto_15

    .line 617
    :cond_11
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->readS()V

    goto :goto_0

    :cond_15
    :goto_15
    return-void
.end method

.method protected skipSpace()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 623
    :goto_0
    iget-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->c:C

    const/16 v1, 0x20

    if-gt v0, v1, :cond_f

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_b

    goto :goto_f

    .line 625
    :cond_b
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->readS()V

    goto :goto_0

    :cond_f
    :goto_f
    return-void
.end method
