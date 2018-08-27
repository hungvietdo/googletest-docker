#include "gtest/gtest.h"
#include<math.h>

int squareroot(double input);

TEST(SquareRootTest, PositiveNos) { 
    EXPECT_EQ (4, squareroot (16));
}
 
int main(int argc, char **argv) {
  ::testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}

int squareroot(double input) {
    return sqrt(input);
}
