.class Lcom/android/systemui/statusbar/policy/WifiIcons;
.super Ljava/lang/Object;
.source "WifiIcons.java"


# static fields
.field static final WIFI_LEVEL_COUNT:I

.field static final WIFI_SIGNAL_STRENGTH:[[I

.field static final WIFI_SIGNAL_STRENGTH_HIDEINANDOUT:[[I

.field static final WIFI_SIGNAL_STRENGTH_LGT:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x5

    .line 22
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    .line 35
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_HIDEINANDOUT:[[I

    .line 49
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_LGT:[[I

    .line 63
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    aget-object v0, v0, v3

    array-length v0, v0

    sput v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    return-void

    .line 22
    :array_0
    .array-data 0x4
        0x69t 0x1t 0x2t 0x7ft
        0x6bt 0x1t 0x2t 0x7ft
        0x6et 0x1t 0x2t 0x7ft
        0x71t 0x1t 0x2t 0x7ft
        0x74t 0x1t 0x2t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x69t 0x1t 0x2t 0x7ft
        0x6bt 0x1t 0x2t 0x7ft
        0x6et 0x1t 0x2t 0x7ft
        0x71t 0x1t 0x2t 0x7ft
        0x74t 0x1t 0x2t 0x7ft
    .end array-data

    .line 35
    :array_2
    .array-data 0x4
        0x6at 0x1t 0x2t 0x7ft
        0x6dt 0x1t 0x2t 0x7ft
        0x70t 0x1t 0x2t 0x7ft
        0x73t 0x1t 0x2t 0x7ft
        0x76t 0x1t 0x2t 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0x6at 0x1t 0x2t 0x7ft
        0x6dt 0x1t 0x2t 0x7ft
        0x70t 0x1t 0x2t 0x7ft
        0x73t 0x1t 0x2t 0x7ft
        0x76t 0x1t 0x2t 0x7ft
    .end array-data

    .line 49
    :array_4
    .array-data 0x4
        0x60t 0x1t 0x2t 0x7ft
        0x61t 0x1t 0x2t 0x7ft
        0x62t 0x1t 0x2t 0x7ft
        0x63t 0x1t 0x2t 0x7ft
        0x64t 0x1t 0x2t 0x7ft
    .end array-data

    :array_5
    .array-data 0x4
        0x60t 0x1t 0x2t 0x7ft
        0x61t 0x1t 0x2t 0x7ft
        0x62t 0x1t 0x2t 0x7ft
        0x63t 0x1t 0x2t 0x7ft
        0x64t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
