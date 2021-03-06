/*-
 * #%L
 * JSQLParser library
 * %%
 * Copyright (C) 2004 - 2019 JSQLParser
 * %%
 * Dual licensed under GNU LGPL 2.1 or Apache License 2.0
 * #L%
 */
package net.sf.jsqlparser.expression.operators.relational;

import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertTrue;
import org.junit.jupiter.api.Test;

/**
 *
 * @author Tobias Warneke (t.warneke@gmx.net)
 */
public class LikeExpressionTest {

    @Test
    public void testLikeNotIssue660() {
        LikeExpression instance = new LikeExpression();
        assertFalse(instance.isNot());
        assertTrue(instance.withNot(true).isNot());
    }
}
